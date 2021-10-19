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
    path('carga-manual/alumnos/<int:pka>', views.cargaManualAlumno, name='agregarAlumnoManual'),
    path('alumnos/editar-alumno/<slug:pk>/<int:ide>', views.editarAlumno, name='editarAlumno'),
    path('alumnos/listado-alumnos/<int:pka>', views.listadoAlumnosRegistrados, name='listadoAlumnosRegistrados'),
    path('alumnos/ficha-academica/<slug:pk>/<int:pka>', views.fichaAcademica, name='fichaAcademica'),
	path('cursos/docente/detalle-curso/ingreso-alumnos/descarga-excel/<int:pk>', views.plantilla_alumnos_excel.as_view(), name='plantilla_alumnos_excel'),
    path('cursos/docente/detalle-curso/cargar-plantilla-alumnos/<int:pk>', views.subir_plantilla_alumnos, name='subir_plantilla_alumnos'),  
    path('cursos/docente/detalle-curso/cargar-plantilla/<int:pk>', views.cargar_plantilla, name='cargar_plantilla'),
    path('alumnos/mis-cursos', views.misCursosAlumnos, name='misCursosAlumnos'),
    path('alumnos/mis-cursos/detalle-curso/<int:pk>', views.detalleCursoAlumnos, name='detalleCursoAlumnos'),
    path('alumnos/mis-cursos/detalle-curso/evaluar-compañeros/<slug:pk>/<int:pka>/<int:ide_evaluacion>', views.evaluarCompañeros, name='evaluarCompañeros'),
    path('alumnos/mis-cursos/detalle-curso/evaluar-compañeros/evalua/<slug:alumnopk>/<int:pka>/<int:ide_evaluacion>/<slug:pk>', views.evalua, name='evalua'), 
    path('alumnos/mis-cursos/detalle-curso/mis-resultados/<int:curso>/<int:evaluacion>/<slug:alumno>', views.verResultadosCoevaluacion, name='verResultadosCoevaluacion'),
    path('alumnos/mis-cursos/detalle-curso/evaluar-compañeros/evalua/<slug:pk>/<int:ide_evaluacion>/<int:pka>', views.evaluaCoevaluacion, name='evaluaCoevaluacion'),      
]