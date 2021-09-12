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
from datetime import date, datetime

from .models import Rubrica, Topico_rubricas, Topico, Puntaje, Calificacion_aspecto
from .forms import RubricaForm, TopicoForm, PuntajeForm
from django.contrib.auth.models import AbstractUser, User
from Curso.models import Evaluacion, Curso
from Usuario.models import Persona

from django.forms import formset_factory, modelformset_factory, modelform_factory


@login_required()
def misRubricas(request,pk):

	rubricas = Rubrica.objects.filter(autor=User.objects.get(pk=request.user.id))

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render(request, 'Rubrica/misRubricas.html',{'pk':pk,'rubricas':rubricas,'usuario':usuario})


@login_required()
def crearRubrica(request,pk,pka):

	rubrica = Rubrica.objects.filter(evaluacion=pk)
	evaluacion = Evaluacion.objects.get(pk=pk)

	if request.method == "POST":
		form = RubricaForm(request.POST)
		if form.is_valid():
			rubrica = form.save(commit=False)
			rubrica.evaluacion = Evaluacion.objects.get(pk=pk)
			rubrica.curso = Curso.objects.get(pk=pka)
			rubrica.autor = User.objects.get(pk=request.user.id)
			rubrica.save()
			return redirect('crearRubrica',pk,pka)
	else:
			form = RubricaForm()

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Rubrica/crear_rubrica.html', {'evaluacion':evaluacion,'form':form, 'rubrica':rubrica,'pk':pk,'pka':pka,'usuario':usuario})


@login_required()
def verRubricaEvaluacion(request,pk):

	rubrica = Rubrica.objects.get(pk=pk)

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Rubrica/verRubricaEvaluacion.html', {'rubrica':rubrica,'pk':pk,'usuario':usuario})


@login_required()
def editarRubricaGeneral(request,pk):

	rubrica = Rubrica.objects.get(pk=pk)

	if request.method == 'GET':
		form = RubricaForm(instance=rubrica)
	else:
		form = RubricaForm(request.POST, instance=rubrica)
		if form.is_valid():
			form.save()
		return redirect('detalleCurso', rubrica.curso.pk)

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render(request, 'Rubrica/editarRubricaGeneral.html', {'form':form,'rubrica':rubrica,'usuario':usuario})


@login_required()
def eliminarRubricaGeneral(request,pk):

	rubrica = Rubrica.objects.get(pk=pk)
	rubrica.delete()
	
	return redirect ('detalleCurso',rubrica.curso.pk)


@login_required()
def verRubricaGeneral(request,pk,pka):

	rubrica = Rubrica.objects.get(pk=pk)

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request,'Rubrica/verRubricaGeneral.html',{'rubrica':rubrica,'pk':pk,'pka':pka,'usuario':usuario})


@login_required()
def llenarRubrica(request,pk):

	rubrica = Rubrica.objects.get(pk=pk)
	aspectos = Topico.objects.filter(rubrica=pk)

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Rubrica/llenarRubrica.html', {'rubrica':rubrica,'aspectos':aspectos,'pk':pk,'usuario':usuario})


@login_required()
def crearAspecto(request,pk):

	aspectos = Topico.objects.filter(rubrica=pk).order_by('id')
	rubrica = Rubrica.objects.get(pk=pk)
	pke = pk
	pka = rubrica.curso.pk

	if Topico.objects.filter(rubrica=pk).count() > 0:
		rubrica = Rubrica.objects.filter(pk=pk).update(estado=3)

	if request.method == "POST":
		form = TopicoForm(request.POST)
		if form.is_valid():
			aspecto = form.save(commit=False)
			aspecto.rubrica = Rubrica.objects.get(pk=pk)
			aspecto.save()
			return redirect('crearAspecto',pk)
	else:
			form = TopicoForm()

	descripcion = Puntaje.objects.filter(rubrica=pk)

	if Topico.objects.filter(rubrica=pk,estado='Definido').count() == Topico.objects.filter(rubrica=pk).count():
		estado_final = True
	else:
		estado_final = False

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Rubrica/crearAspecto.html', {'estado_final':estado_final,'descripcion':descripcion,'pke':pke,'form':form,'rubrica':rubrica,'aspectos':aspectos,'pk':pk,'pka':pka,'usuario':usuario})


@login_required()
def eliminarAspecto(request,pk):

	aspecto = Topico.objects.get(pk=pk)
	aspecto.delete()
	
	return redirect ('crearAspecto',aspecto.rubrica.pk)


@login_required()
def puntuarAspecto(request,pke,pka,pk):

	aspecto = Topico.objects.get(pk=pk,rubrica=pke)
	rubrica = Rubrica.objects.get(pk=pke)
	calificacion = Calificacion_aspecto.objects.filter(flag=True).values()

	data = {
		'form-TOTAL_FORMS': calificacion.count(),
		'form-INITIAL_FORMS': calificacion.count(),
		'form-MAX_NUM_FORMS': calificacion.count(),
	}

	puntajes_evaluados = formset_factory(PuntajeForm)
	formset = puntajes_evaluados(data = data, initial = list(calificacion))

	if request.method == 'POST':
		formset = puntajes_evaluados(request.POST, request.FILES)
		if formset.is_valid():
			i=0
			for califica in calificacion:
				aux_2 = Calificacion_aspecto.objects.get(pk = califica["id"])
				creacion_puntajes = Puntaje.objects.create(rubrica = Rubrica.objects.get(pk=pke), descripcion = (formset.cleaned_data[i]).get("descripcion"), calificacion=aux_2,topico=Topico.objects.get(pk=pk,rubrica=pke))
				creacion_puntajes.save()
				i = i + 1
				
				if Puntaje.objects.filter(topico=pk).count() == 4:
					aspecto_update = Topico.objects.filter(pk=pk,rubrica=pke).update(estado='Definido')      
			return redirect('crearAspecto',pke)
	else:
		hola = []
		aux = {}

		for x in range(calificacion.count()):
			aux = dict(calificacion=calificacion[x], form = formset[x])
			hola.append(aux)
	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)


	return render (request, 'Rubrica/puntuarAspecto.html', {'hola':hola,'formset':formset,'usuario':usuario,'rubrica':rubrica,'aspecto':aspecto,'calificacion':calificacion,'pke':pke,'pka':pka,'pk':pk})


@login_required()
def rubricaFinalizada(request,pk,pka):

	aspectos = Topico.objects.filter(rubrica=pk)
	rubrica = Rubrica.objects.get(pk=pk)

	curso = Curso.objects.get(pk=pka)
	calificacion = Calificacion_aspecto.objects.all()	
	puntajes = []

	for aspecto in Topico.objects.filter(rubrica=pk):
		for p in Puntaje.objects.filter(topico=aspecto).order_by('calificacion'):
			puntajes.append(p)

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'Rubrica/rubricaFinalizada.html',{'usuario':usuario,'rubrica':rubrica,'curso':curso,'calificacion':calificacion,'puntajes':puntajes,'aspectos':aspectos,'pk':pk,'pka':pka})


#FUNCIONES DE CREACION DE DOCUMENTOS

@login_required()
def descarga_rubrica_pdf(self,pk):

	rubrica = Rubrica.objects.get(pk=pk)
	today = date.today()
	fecha = today.strftime("%d/%m/%Y")

	response = HttpResponse(content_type='application/pdf')  
	response['content-Disposition'] = 'attachment; filename=rubrica-' + str(rubrica.evaluacion.nombre) + '.pdf'

	buffer = io.BytesIO()  
	doc = SimpleDocTemplate(buffer,  
    	pagesize=letter,  
    	rightMargin=40,  
    	leftMargin=40,  
    	topMargin=60,  
    	bottomMargin=18,  
    	)  

	sample_style_sheet = getSampleStyleSheet()

	story = []
	style = sample_style_sheet["Normal"]
	style.fontName = 'Times-Roman'
	style.fontSize = 10
	style.alignment = TA_RIGHT

    #LOGOS
	fichero_imagen = "logo_pucv.png"
	imagen_logo = Image(os.path.realpath(fichero_imagen), width=200,height=80)
	imagen_logo.align = 'LEFT'


	style.pageBreakBefore=0
	style.keepWithNext=0
	style.fontSize=11

	Aderecha = getSampleStyleSheet()
	alineadoderecha = Aderecha['Normal']
	alineadoderecha.alignment=TA_RIGHT

	parte1 = Paragraph('', style)
	parte2 = Paragraph('', alineadoderecha)


	cadena = 'FACULTAD DE INGENIERÍA'
	parrafo_1 = Paragraph(cadena, style)
	cadena_2 = 'ESCUELA DE INGENIERIA INFORMÁTICA'
	parrafo_2 = Paragraph(cadena_2, style)
	cadena_3 = '<u>' + str(rubrica.curso.asignatura.carrera.nombre) + '</u>'
	parrafo_3 = Paragraph(cadena_3, style)
	cadena_fecha = '<hr><br></br><b>Fecha: </b>'+str(fecha)
	parrafo_fecha = Paragraph(cadena_fecha,style)

	Style2 = getSampleStyleSheet()
	style_2 = Style2["Normal"]
	style_2.fontName = 'Times-Roman'
	style_2.fontSize = 15
	style_2.alignment = TA_CENTER
	cadena_4 = '<br /><b>Rúbrica <i>' + str(rubrica.evaluacion.nombre) + '</i></b> - <u>' + str(rubrica.curso.asignatura.nombre) + '</u>'
	parrafo_4 = Paragraph(cadena_4, style_2)

	cadena_salto = '<br /><br /><br /><br />'
	parrafo_salto = Paragraph(cadena_salto, style_2)

	style4 = getSampleStyleSheet()
	style_4 = style4["Normal"]
	style_4.fontName = 'Times-Roman'
	style_4.fontSize = 14
	style_4.alignment = TA_JUSTIFY
	style_4.leading = 25

    #///////////////////////////////tabla///////////////////////
	t=Table(
    	data=[
        	[[imagen_logo, parte1],[parte2]],
    	],
    	style=[
        	('VALIGN', (1, 1), (-1, -1), 'TOP'),   
    	]
    	)

	headings = ('N°','ASPECTOS','(1) INSUFICIENTE', '(2) SUFIENTE', '(3) BUENO', '(4) EXCELENTE')

	if not pk:  
		puntuacion = [(p.id, p.nombre) for p in Topico.objects.filter(rubrica=pk) and
					  (j.descripcion) for j in Puntaje.objects.filter(rubrica=pk,topico=Topico.objects.get(pk=p))]
	else:  
		puntuacion = [(p.id, p.nombre, a.descripcion, b.descripcion,c.descripcion,d.descripcion) for p in Topico.objects.filter(rubrica=pk)
					 for a in Puntaje.objects.filter(rubrica=pk,topico=p,calificacion=1)
					 for b in Puntaje.objects.filter(rubrica=pk,topico=p,calificacion=2)
					 for c in Puntaje.objects.filter(rubrica=pk,topico=p,calificacion=3)
					 for d in Puntaje.objects.filter(rubrica=pk,topico=p,calificacion=4)]

	ti = Table([headings] + puntuacion)  
	ti.setStyle(TableStyle(  
	[  
    	('GRID', (0, 0), (-1, -1), 1, colors.HexColor("#00030")),  
    	('LINEBELOW', (0, 0), (-1, 0), 3, colors.HexColor("#000306")),  
    	('BACKGROUND', (0, 0), (-1, 0), colors.HexColor("#29588c")),
    	('TEXTCOLOR', (0,0), (-1,-1), colors.white),
    	('TEXTCOLOR', (0,1), (15,15), colors.black)  
	]  
	)) 

	style7 = getSampleStyleSheet()
	style_7 = style4["Normal"]
	style_7.fontName = 'Times-Roman'
	style_7.fontSize = 14
	style_7.alignment = TA_CENTER
	style_7.leading = 25

	firmas = '<br /><u><i>Docente a Cargo</i></u>'
	P_firmas = Paragraph(firmas, style_7)


	styles = getSampleStyleSheet()
	styleTable = styles['BodyText']
	styleTable.alignment = TA_CENTER
	styleTable.fontSize = 10
	styleTable.fontName = 'Times-Roman'

	Presidente = Paragraph('''PAMELA HERMOSILLA MONCKTON''', styleTable)
	t2=Table(
    	data=[
        	[Presidente],

    	], colWidths=140, rowHeights=70,
    	style=[('ALIGN',(1,1),(-1,-1),'CENTER'),
    	('VALIGN',(0,0),(-1,-1),'TOP'),
        
    	] )

	story.append(t)  
	story.append(parrafo_1)
	story.append(parrafo_2)
	story.append(parrafo_3)
	story.append(parrafo_fecha)
	story.append(parrafo_4)   
	story.append(parrafo_salto)
	story.append(ti)
	story.append(parrafo_salto)
	story.append(P_firmas)    
	story.append(t2)
	doc.build(story)  
	response.write(buffer.getvalue())  
	buffer.close()  

	return response