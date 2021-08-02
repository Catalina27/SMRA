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


def cargaManualAlumno(request):

	alumno = Alumno.objects.all()
	if request.method == "POST":
		form = AlumnoForm(request.POST)
		if form.is_valid():
			alumno = form.save(commit=False)
			alumno.save()
			return redirect('agregarAlumnoManual')
	else:
			form = AlumnoForm()
	return render (request, 'Alumno/ingresoAlumnoManual.html',{'form':form,'alumno':alumno})


def editarAlumno(request,pk):
    alumno = Alumno.objects.get(pk=pk)
    form = AlumnoForm(request.POST or None, instance=alumno)
    if form.is_valid():
        form.save()
        messages.success(request, 'Se ha editado la información correctamente')
        return redirect('misCursos')
    return render(request, 'Alumno/editarAlumno.html', {'form': form, 'pk':pk}) 