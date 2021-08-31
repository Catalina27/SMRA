from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.db import connection
#from braces.views import LoginRequiredMixin
from django.views.generic import CreateView, UpdateView, DetailView, DeleteView, ListView, TemplateView
from django.urls import reverse_lazy
from django.shortcuts import get_object_or_404
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render_to_response
import request
from django.db.models import Q
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from openpyxl import Workbook

#librería matplotlib que permite generar gráficos
#from matplotlib import pyplot

#LIBRERIAS PARA CREACION DE DOCUMENTOS
import os
import io
from io import BytesIO
from dateutil import relativedelta as rdelta 
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter, legal, A4
from reportlab.lib import colors
from reportlab.lib.units import inch, cm
from reportlab.graphics.shapes import Drawing
from reportlab.platypus import Paragraph, Table, TableStyle, Image, Spacer, SimpleDocTemplate, Frame, PageTemplate, NextPageTemplate, PageBreak
from reportlab.lib.enums import TA_CENTER, TA_LEFT, TA_JUSTIFY, TA_RIGHT
from reportlab.lib import colors 
from reportlab.lib.colors import white, black
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle, PropertySet
from reportlab.platypus import BaseDocTemplate, Frame, PageTemplate, Paragraph , Preformatted
from django.http import FileResponse
from django.views.generic import View
from django.core.files.storage import FileSystemStorage
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfbase.pdfmetrics import registerFont, registerFontFamily 
from reportlab.platypus import SimpleDocTemplate, Paragraph, TableStyle  
from reportlab.lib.styles import getSampleStyleSheet  
from reportlab.lib import colors  
from reportlab.lib.pagesizes import letter  
from reportlab.platypus import Table  

import random
from datetime import date
from datetime import datetime
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login
from .forms import ExtendedUserCreationForm, PersonaForm, AlumnoForm
from .models import Alumno
from django.contrib.auth.models import AbstractUser, User
from Curso.models import Curso, Asignatura_alumnos, Evaluacion, Archivo
from Carrera.models import Carrera

from Curso.forms import Archivo_form

import openpyxl
from openpyxl import Workbook #para creación excel
from openpyxl.styles import Alignment, Border, Font, PatternFill, Side
from openpyxl import load_workbook
from openpyxl.worksheet.cell_range import CellRange
from openpyxl.worksheet.datavalidation import DataValidation

# Create your views here.

def register(request):
	if request.method == 'POST':
		form = ExtendedUserCreationForm(request.POST)
		persona_form = PersonaForm(request.POST)

		if form.is_valid() and persona_form.is_valid():
			user = form.save()
			persona = persona_form.save(commit=False)
			persona.user = user
			persona.save()

			username = form.cleaned_data.get('username')
			password = form.cleaned_data.get('password1')
			user = authenticate(username=username, password=password)
			login(request,user)

			return redirect('home')

	else:
		form = ExtendedUserCreationForm()
		persona_form = PersonaForm()


	context = {'form':form, 'persona_form':persona_form}

	return render(request, 'registration/prueba.html',context)


def cargaManualAlumno(request,pka):

	alumno = Alumno.objects.filter(user=request.user.id)

	if request.method == "POST":
		form = AlumnoForm(request.POST)
		if form.is_valid():
			alumno = form.save(commit=False)
			alumno.user = User.objects.get(pk=request.user.id)
			alumno.save()
			return redirect('agregarAlumnoManual',pka)
	else:
			form = AlumnoForm()
	return render (request, 'Alumno/ingresoAlumnoManual.html',{'form':form,'alumno':alumno,'pka':pka})


def editarAlumno(request,pk,ide):
	curso = Curso.objects.get(pk=ide)
	alumno = Alumno.objects.get(pk=pk)
	form = AlumnoForm(request.POST or None, instance=alumno)
	if form.is_valid():
		form.save()
		messages.success(request, 'Se ha editado la información correctamente')
		return redirect('agregarAlumnoManual',ide)
	return render(request, 'Alumno/editarAlumno.html', {'form': form, 'pk':pk,'ide':ide}) 


def listadoAlumnosRegistrados(request,pka):
	alumnos = Alumno.objects.filter(user=request.user.id)
	alumno_en_curso = Asignatura_alumnos.objects.filter(alumno__user=request.user.id, curso=pka)

	return render (request, 'Alumno/listadoAlumnosRegistrados.html',{'alumnos':alumnos,'pka':pka,'alumno_en_curso':alumno_en_curso})


def fichaAcademica(request,pk,pka):

	alumno = Alumno.objects.get(pk=pk)
	evaluaciones = Evaluacion.objects.filter(curso=pka)
	curso = Curso.objects.get(pk=pka)

	return render (request,'Alumno/fichaAcademica.html', {'alumno':alumno,'evaluaciones':evaluaciones,'curso':curso,'pka':pka})

#FUNCIÓN QUE DESCARGA LA PLANTILLA QUE SERÁ LLENADA PARA CARGAR A LOS ALUMNOS

class plantilla_alumnos_excel(TemplateView):
    def get(self,request,pk,*args,**kwargs):

    	curso = Curso.objects.get(pk=pk,profesor=request.user.id)
    	sigla_curso = curso.asignatura.sigla
    	nombre_curso = curso.asignatura.nombre
    	nombre_carrera = curso.asignatura.carrera.nombre

    	wb = Workbook()
    	ws = wb.active
    	ws['A1'] = 'Curso'
    	ws['A2'] = 'Aula Virtual'
    	ws['A3'] = 'Carrera'

    	ws.merge_cells('F5')
    	cont = 6
    	ws['A5'] = 'Rut'
    	ws['B5'] = 'Nombres'
    	ws['C5'] = 'Apellido Paterno'
    	ws['D5'] = 'Apellido Materno'
    	ws['E5'] = 'Correo PUCV'

    	ws.row_dimensions[1].height = 23

    	ws.column_dimensions['A'].width = 20
    	ws.column_dimensions['B'].width = 35
    	ws.column_dimensions['C'].width = 25
    	ws.column_dimensions['D'].width = 25
    	ws.column_dimensions['E'].width = 30


    	ws['A5'].alignment = Alignment(horizontal = "center", vertical = "center")
    	ws['A5'].border = Border(left = Side(border_style = "thin"), right = Side(border_style = "thin"), top = Side(border_style = "thin"), bottom = Side(border_style = "thin"))
    	ws['A5'].fill = PatternFill(start_color = 'FCBC32', end_color = 'FCBC32', fill_type = "solid")
    	ws['A5'].font = Font(name= 'Calibro', size = 10, bold=True)

    	ws['B5'].alignment = Alignment(horizontal = "center", vertical = "center")
    	ws['B5'].border = Border(left = Side(border_style = "thin"), right = Side(border_style = "thin"), top = Side(border_style = "thin"), bottom = Side(border_style = "thin"))
    	ws['B5'].fill = PatternFill(start_color = 'FCBC32', end_color = 'FCBC32', fill_type = "solid")
    	ws['B5'].font = Font(name= 'Calibro', size = 10, bold=True)

    	ws['C5'].alignment = Alignment(horizontal = "center", vertical = "center")
    	ws['C5'].border = Border(left = Side(border_style = "thin"), right = Side(border_style = "thin"), top = Side(border_style = "thin"), bottom = Side(border_style = "thin"))
    	ws['C5'].fill = PatternFill(start_color = 'FCBC32', end_color = 'FCBC32', fill_type = "solid")
    	ws['C5'].font = Font(name= 'Calibro', size = 10, bold=True)

    	ws['D5'].alignment = Alignment(horizontal = "center", vertical = "center")
    	ws['D5'].border = Border(left = Side(border_style = "thin"), right = Side(border_style = "thin"), top = Side(border_style = "thin"), bottom = Side(border_style = "thin"))
    	ws['D5'].fill = PatternFill(start_color = 'FCBC32', end_color = 'FCBC32', fill_type = "solid")
    	ws['D5'].font = Font(name= 'Calibro', size = 10, bold=True)

    	ws['E5'].alignment = Alignment(horizontal = "center", vertical = "center")
    	ws['E5'].border = Border(left = Side(border_style = "thin"), right = Side(border_style = "thin"), top = Side(border_style = "thin"), bottom = Side(border_style = "thin"))
    	ws['E5'].fill = PatternFill(start_color = 'FCBC32', end_color = 'FCBC32', fill_type = "solid")
    	ws['E5'].font = Font(name= 'Calibro', size = 10, bold=True)

    	ws['B1'].alignment = Alignment(horizontal = "center", vertical = "center")
    	ws['B1'].border = Border(left = Side(border_style = "thin"), right = Side(border_style = "thin"), top = Side(border_style = "thin"), bottom = Side(border_style = "thin"))
    	ws['B1'].font = Font(name= 'Calibro', size = 8, bold=True)

    	ws['B3'].alignment = Alignment(horizontal = "center", vertical = "center")
    	ws['B3'].border = Border(left = Side(border_style = "thin"), right = Side(border_style = "thin"), top = Side(border_style = "thin"), bottom = Side(border_style = "thin"))
    	ws['B3'].font = Font(name= 'Calibro', size = 8, bold=True)

    	ws.cell(row = 1, column = 2).value = str(sigla_curso + ' - ' + nombre_curso)
    	ws.cell(row = 3, column = 2).value = nombre_carrera

    	i = random.randrange(9999999999999)
    	nombre_archivo = 'plantilla-subir-listado-alumnos' + str(i) + '.xlsx'
    	response = HttpResponse(content_type = "application/ms-excel")
    	content = "attachment; filename = {0}".format(nombre_archivo)
    	response['Content-Disposition'] = content
    	wb.save(response)
    	return response


@login_required()
def subir_plantilla_alumnos(request,pk):

    curso = Curso.objects.get(pk=pk)

    if request.method == 'POST':
        form = Archivo_form(request.POST, request.FILES)
        if form.is_valid():
            archivo = form.save(commit=False)
            archivo.carrera = curso.asignatura.carrera.pk
            archivo.curso = curso
            archivo.save()
            return redirect('cargar_plantilla',pk)
    else:
        form = Archivo_form()

    return render (request,'Alumno/subir_plantilla_alumnos.html',{'pk':pk,'form':form})


# CARGAR DATOS PLANTILLA INGRESADA

@login_required()
def cargar_plantilla(request,pk):
    
    archivo = Archivo.objects.get(curso=pk) #obtengo el archivo subido
    asignatura = archivo.curso.asignatura.pk
    carrera = archivo.curso.asignatura.carrera.pk
    lista_alumnos = []

    doc_name = os.path.join(str(Archivo.objects.get(curso=pk))) #obtengo el valor del nombre de la ruta donde quedó guardado el doc
    doc_name_long = 'media/'+str(doc_name) #LE DOY LA RUTA DEL ARCHIVO
    doc = load_workbook(doc_name_long) #abro el archivo
    hoja = doc.active #fijo la hoja
    ultima_fila = hoja.max_row #obtengo la última fila del excel
    
    celdas_alumno = hoja[5:ultima_fila] #obtengo la matriz de la información del alumno

    for filas in celdas_alumno:    #FUNCIÓN NO REALIZADA PARA SÓLO UN ALUMNO, TOMA MÁS DE UNO
        alumno = [celda.value for celda in filas]
        lista_alumnos.append(alumno)

    i = 0
    for alumno in lista_alumnos[1:]:

        if Alumno.objects.get(rut=alumno[0]):
            alumno_registrado = Alumno.objects.get(rut=alumno[0])
            asignatura_alumno = Asignatura_alumnos.objects.create(alumno=Alumno.objects.get(pk=alumno_registrado.pk), curso=Curso.objects.get(pk=pk))
        else:
            a = Alumno.objects.create(carrera=Carrera.objects.get(pk=carrera), rut = alumno[0], nombre= alumno[1], apellido_pat = alumno[2], apellido_mat = alumno[3], mail = alumno[4], user=User.objects.get(pk=request.user.id))
            asignatura_alumno = Asignatura_alumnos.objects.create(alumno=Alumno.objects.get(pk=a.pk), curso=Curso.objects.get(pk=pk))
    return redirect('detalleCurso', pk)

