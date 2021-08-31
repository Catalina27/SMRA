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

    #-----RÚBRICA-----
    path('cursos/docente', views.misCursos, name="misCursos"),
    path('cursos/docente/agregar-asignatura', views.agregarAsignatura, name="agregarAsignatura"),
    path('cursos/docente/asignatura/curso/<int:pk>', views.agregarCurso, name="agregarCurso"),
    path('cursos/docente/detalle-curso/<int:pk>', views.detalleCurso, name="detalleCurso"),
    path('cursos/docente/detalle-asignatura/<int:pk>', views.detalle_general_asignatura, name="detalle_general_asignatura"),
    path('cursos/docente/detalle-asignatura/crear-evaluacion/<int:pk>', views.crearEvaluacion, name="crear_evaluacion"),
    path('cursos/docente/detalle-asignatura/editar-evaluacion/<int:pk>', views.editarEvaluacion, name="editarEvaluacion"),
    path('cursos/docente/detalle-asignatura/eliminar-evaluacion/<int:pk>', views.eliminarEvaluacion, name="eliminarEvaluacion"),
    path('cursos/docente/detalle-asignatura/agregar-alumno-curso/<slug:pk>/<int:pka>', views.agregar_alumno_a_curso, name="agregar_alumno_a_curso"),
    path('cursos/docente/detalle-asignatura/eliminar-alumno-curso/<slug:pk>/<int:pka>', views.eliminar_alumno_a_curso, name="eliminar_alumno_a_curso"),
  
]