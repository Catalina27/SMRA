from django.urls import path, include
from django.conf.urls import url
from django.conf import settings
from django.conf.urls.static import static
from rest_framework import routers
from rest_framework.routers import DefaultRouter
from . import views
from django.contrib.auth import views as auth_views
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.auth.decorators import login_required
from django.contrib.auth.views import LoginView
from django.contrib.auth import views as auth_views
from rest_framework import routers, serializers, viewsets, generics
from django.conf.urls.static import static



urlpatterns = [

    #-----REGISTRO-----
    path('sign-up/', views.register, name='sign-up'),
    path('carga-manual/alumnos', views.cargaManualAlumno, name='agregarAlumnoManual'),
    path('alumnos/editar-alumno/<slug:pk>', views.editarAlumno, name='editarAlumno'),


]