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

from .models import RA
from .forms import RAform
from Usuario.models import Alumno, Persona
from Curso.models import Curso, Evaluacion, Asignatura
from django.contrib.auth.models import AbstractUser, User

@login_required()
def agregarRA(request,pk):
	asignatura = get_object_or_404(Asignatura, pk=pk)
	ras = RA.objects.filter(asignatura=pk)

	if request.method == "POST":
		form = RAform(request.POST or None)
		if form.is_valid():
			ra = form.save(commit=False)
			ra.asignatura = Asignatura.objects.get(pk=pk)
			ra.autor = User.objects.get(pk=request.user.id)
			ra.save()
			return redirect('agregarRA',pk)
	else:
		form = RAform()

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render (request, 'RA/agregarRA.html', {'form':form,'ras':ras,'pka':pk,'usuario':usuario})


@login_required()
def eliminarRA(request,pk):

	ra = RA.objects.get(pk=pk)
	ra.delete()

	return redirect ('agregarRA',ra.asignatura.pk)


@login_required()
def editarRA(request,pk,pka):
	ra = RA.objects.get(pk=pk)

	if request.method == 'GET':
		form = RAform(instance=ra)
	else:
		form = RAform(request.POST, instance=ra)
		if form.is_valid():
			form.asignatura = Asignatura.objects.get(pk=pka)
			form.save()
		return redirect('agregarRA', ra.asignatura.pk)

	#TIPO DE USUARIO
	current_user = request.user
	usuario = Persona.objects.get(user=current_user.id)
	return render(request, 'RA/editarRA.html', {'form':form,'ra':ra,'usuario':usuario})