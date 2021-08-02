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

from .models import Curso, Asignatura, Tipo_evaluacion, Evaluacion, Evaluacion_alumnos, Asignatura_alumnos
from .forms import CursoForm, AsignaturaForm
from Usuario.models import Persona

# Create your views here.

def misCursos(request):
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	tipo_usuario = usuario.tipo_usuario

	curso = Curso.objects.all()
	asignatura = Asignatura.objects.filter(anio='2021')
	return render (request, 'Curso/misCursos.html',{'usuario':usuario, 'tipo_usuario':tipo_usuario, 'curso':curso, 'asignatura':asignatura})


def agregarCurso(request):
	cursos = Curso.objects.all()
	asignaturas = Asignatura.objects.all()
	if request.method == "POST":
		form = CursoForm(request.POST)
		if form.is_valid():
			curso = form.save(commit=False)
			curso.save()
			return redirect('agregarCurso')
	else:
			form = CursoForm()
	return render (request, 'Curso/agregarCurso.html', {'form':form, 'cursos':cursos, 'asignaturas':asignaturas})


def agregarAsignatura(request,pk):
	curso = get_object_or_404(Curso, pk=pk)
	print(curso)

	if request.method == "POST":
		form = AsignaturaForm(request.POST or None)
		if form.is_valid():
			asignatura = form.save(commit=False)
			asignatura.curso = curso
			asignatura.save()
			print('se creó')
			return redirect('misCursos')
	else:
		form = AsignaturaForm()
		print('no se creó')
	return render (request, 'Curso/agregarAsignatura.html', {'form':form})


def detalleAsignatura(request,pk):
	asignatura = Asignatura.objects.get(pk=pk)

	return render(request, 'Curso/detalleCurso.html', {'asignatura':asignatura,'pk':pk})