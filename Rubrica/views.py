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

from .models import Rubrica, Topico_rubricas, Topico, Puntaje, Calificacion_aspecto
from .forms import RubricaForm, TopicoForm, PuntajeForm
from django.contrib.auth.models import AbstractUser, User
from Curso.models import Evaluacion, Curso
# Create your views here.


#def crearRubrica(request):
#	return render(request, 'Rubrica/crear_rubrica.html')


def misRubricas(request,pk):

	rubricas = Rubrica.objects.filter(autor=User.objects.get(pk=request.user.id))

	return render(request, 'Rubrica/misRubricas.html',{'pk':pk,'rubricas':rubricas})


def crearRubrica(request,pk,pka):

	rubrica = Rubrica.objects.filter(evaluacion=pk)

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
	return render (request, 'Rubrica/crear_rubrica.html', {'form':form, 'rubrica':rubrica,'pk':pk,'pka':pka})


def verRubricaEvaluacion(request,pk):

	rubrica = Rubrica.objects.get(pk=pk)

	return render (request, 'Rubrica/verRubricaEvaluacion.html', {'rubrica':rubrica,'pk':pk})


def editarRubricaGeneral(request,pk):

	rubrica = Rubrica.objects.get(pk=pk)

	if request.method == 'GET':
		form = RubricaForm(instance=rubrica)
	else:
		form = RubricaForm(request.POST, instance=rubrica)
		if form.is_valid():
			form.save()
		return redirect('detalleCurso', rubrica.curso.pk)

	return render(request, 'Rubrica/editarRubricaGeneral.html', {'form':form,'rubrica':rubrica})


def eliminarRubricaGeneral(request,pk):

	rubrica = Rubrica.objects.get(pk=pk)
	rubrica.delete()
	
	return redirect ('detalleCurso',rubrica.curso.pk)


def verRubricaGeneral(request,pk,pka):

	rubrica = Rubrica.objects.get(pk=pk)

	return render (request,'Rubrica/verRubricaGeneral.html',{'rubrica':rubrica,'pk':pk,'pka':pka})


def llenarRubrica(request,pk):

	rubrica = Rubrica.objects.get(pk=pk)
	aspectos = Topico.objects.filter(rubrica=pk)

	return render (request, 'Rubrica/llenarRubrica.html', {'rubrica':rubrica,'aspectos':aspectos,'pk':pk})


def crearAspecto(request,pk):

	aspectos = Topico.objects.filter(rubrica=pk)
	rubrica = Rubrica.objects.get(pk=pk)
	pka = rubrica.curso.pk

	if request.method == "POST":
		form = TopicoForm(request.POST)
		if form.is_valid():
			aspecto = form.save(commit=False)
			aspecto.rubrica = Rubrica.objects.get(pk=pk)
			aspecto.save()

			for x in Calificacion_aspecto.objects.all():
				puntaje = Puntaje.objects.create(rubrica=Rubrica.objects.get(pk=pk),topico=Topico.objects.get(pk=aspecto.pk), calificacion=Calificacion_aspecto.objects.get(pk=x.pk))
				puntaje.save()
			return redirect('crearAspecto',pk)
	else:
			form = TopicoForm()
	return render (request, 'Rubrica/crearAspecto.html', {'form':form,'rubrica':rubrica,'aspectos':aspectos,'pk':pk,'pka':pka})


def eliminarAspecto(request,pk):

	aspecto = Topico.objects.get(pk=pk)
	aspecto.delete()
	
	return redirect ('crearAspecto',aspecto.rubrica.pk)


def puntuarAspecto(request,pk,pka):

	aspectos = Topico.objects.filter(rubrica=pk)
	rubrica = Rubrica.objects.get(pk=pk)
	calificacion = Calificacion_aspecto.objects.all()
	puntajes = []

	for aspecto in Topico.objects.filter(rubrica=pk):
		for p in Puntaje.objects.filter(topico=aspecto).order_by('calificacion'):
			puntajes.append(p)
			puntaje = Puntaje.objects.get(pk=p.pk)

			if request.method == "GET":
				form = PuntajeForm(instance=puntaje)
			else:
				form = PuntajeForm(request.POST, instance=puntaje)
				if form.is_valid():
					form.save()
					return redirect('puntuarAspecto',pk,pka)
	return render (request, 'Rubrica/puntuarAspecto.html', {'form':form,'rubrica':rubrica,'aspectos':aspectos,'calificacion':calificacion,'puntajes':puntajes,'pk':pk,'pka':pka})

