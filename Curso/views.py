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

from .models import Curso, Asignatura, Tipo_evaluacion, Evaluacion, Evaluacion_alumnos, Asignatura_alumnos, Asignatura_alumnos
from .forms import CursoForm, AsignaturaForm, EvaluacionForm
from Usuario.models import Persona, Alumno
from django.contrib.auth.models import AbstractUser, User
from Rubrica.models import Rubrica

# Create your views here.

@login_required()
def misCursos(request):
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	tipo_usuario = usuario.tipo_usuario

	curso = Curso.objects.filter(anio='2021',semestre='2')
	asignatura = Asignatura.objects.all()
	rubricas = Rubrica.objects.all()

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Curso/misCursos.html',{'usuario':usuario, 'tipo_usuario':tipo_usuario, 'curso':curso, 'asignatura':asignatura,'usuario':usuario})


@login_required()
def agregarAsignatura(request):
	cursos = Curso.objects.filter(profesor=request.user.id)
	asignaturas = Asignatura.objects.filter(autor=request.user.id)
	cursoList = []
	user = request.user.id

	for asignaturi in Asignatura.objects.filter(autor=request.user.id):
		if Curso.objects.filter(profesor=asignaturi.autor.id).filter(asignatura=asignaturi.id):
			print('Ya está en tu listado de cursos')
		else:
			print('No está en tu listado de cursos')
			cursoList.append(asignaturi)

	if request.method == "POST":
		form = AsignaturaForm(request.POST)
		if form.is_valid():
			asignatura = form.save(commit=False)
			asignatura.autor = User.objects.get(pk=request.user.id)
			asignatura.save()
			return redirect('agregarAsignatura')
	else:
			form = AsignaturaForm()

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Curso/agregarAsignatura.html', {'form':form, 'cursos':cursos,'cursoList':cursoList,'usuario':usuario})


@login_required()
def agregarCurso(request,pk):
	asignatura = get_object_or_404(Asignatura, pk=pk)
	print(asignatura)

	if request.method == "POST":
		form = CursoForm(request.POST or None)
		if form.is_valid():
			curso = form.save(commit=False)
			curso.asignatura = asignatura
			curso.profesor = User.objects.get(pk=request.user.id)
			curso.save()
			print('se creó')
			return redirect('misCursos')
	else:
		form = CursoForm()
		print('no se creó')

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Curso/agregarCurso.html', {'form':form,'usuario':usuario})


@login_required()
def detalleCurso(request,pk):
	suma = 0

	for x in Evaluacion.objects.filter(curso=pk):
		suma = suma + x.ponderacion

	print(suma)

	rubrica = []
	curso = Curso.objects.get(pk=pk)
	evaluaciones = Evaluacion.objects.filter(curso=pk)
	alumno = Asignatura_alumnos.objects.filter(curso=pk)
	
	for evaluacion in Evaluacion.objects.filter(curso=pk):
		rubrica = Rubrica.objects.raw('SELECT * FROM "Rubrica_rubrica" as rubrica JOIN "Curso_evaluacion" as evaluacion ON rubrica.curso_id = evaluacion.curso_id WHERE rubrica.curso_id = ' + str(pk) + ' AND evaluacion.id = ' + str(evaluacion.pk) + ';')
	
	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render(request, 'Curso/detalleCurso.html', {'usuario':usuario,'curso':curso,'pk':pk, 'pka':pk,'evaluaciones':evaluaciones,'suma':suma,'alumno':alumno,'rubrica':rubrica})


@login_required()
def detalle_general_asignatura(request,pk):
	asignatura = Asignatura.objects.get(pk=pk)

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render(request, 'Curso/detalle_general_asignatura.html', {'asignatura':asignatura,'pk':pk,'usuario':usuario})


@login_required()
def crearEvaluacion(request,pk):
	curso = Curso.objects.get(pk=pk)
	evaluaciones = Evaluacion.objects.filter(curso=pk)

	if request.method == "POST":
		form = EvaluacionForm(request.POST)
		if form.is_valid():
			evaluacion = form.save(commit=False)
			evaluacion.curso = curso
			evaluacion.save()
			return redirect('crear_evaluacion',pk)
	else:
			form = EvaluacionForm()

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Evaluacion/crear_evaluacion.html', {'form':form, 'evaluaciones':evaluaciones,'pk':pk,'usuario':usuario})


@login_required()
def editarEvaluacion(request,pk):
	evaluacion = Evaluacion.objects.get(pk=pk)

	if request.method == 'GET':
		form = EvaluacionForm(instance=evaluacion)
	else:
		form = EvaluacionForm(request.POST, instance=evaluacion)
		if form.is_valid():
			form.save()
		return redirect('detalleCurso', evaluacion.curso.pk)

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render(request, 'Evaluacion/editarEvaluacion.html', {'form':form,'evaluacion':evaluacion,'usuario':usuario})


@login_required()
def eliminarEvaluacion(request,pk):

	evaluacion = Evaluacion.objects.get(pk=pk)
	evaluacion.delete()
	
	return redirect ('detalleCurso',evaluacion.curso.pk)


####################### AGREGAR ALUMNO AL CURSO #####################

@login_required()
def agregar_alumno_a_curso(request,pk,pka):

	alumno = Alumno.objects.get(pk=pk) #obtengo el alumno
	curso = Curso.objects.get(pk=pka) #obtengo el curso

	alumno_en_curso = Asignatura_alumnos.objects.create(curso=curso, alumno=alumno)
	alumno_en_curso.save()

	return redirect('listadoAlumnosRegistrados',pka)


@login_required()
def eliminar_alumno_a_curso(request,pk,pka):

	alumno = Asignatura_alumnos.objects.get(alumno=pk) #obtengo el alumno
	alumno.delete()

	return redirect('listadoAlumnosRegistrados', pka)