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
    #path('new/rubrica', views.crearRubrica, name="crearRubrica"),
    path('cursos/docente/crear-rubrica/<int:pk>/<int:pka>', views.crearRubrica, name="crearRubrica"),
    path('cursos/docente/editar-rubrica-general/<int:pk>', views.editarRubricaGeneral, name="editarRubricaGeneral"),
    path('cursos/docente/eliminar-rubrica-general/<int:pk>', views.eliminarRubricaGeneral, name="eliminarRubricaGeneral"),
    path('cursos/docente/ver-rubrica-general/<int:pk>/<int:pka>', views.verRubricaGeneral, name="verRubricaGeneral"),
    path('cursos/docente/rubrica-general/llenar-rubrica/<int:pk>/<int:pka>', views.llenarRubrica, name="llenarRubrica"),
    path('cursos/docente/rubrica-general/llenar-rubrica/crear-aspecto/<int:pk>/<int:pka>', views.crearAspecto, name="crearAspecto"),
    path('cursos/docente/rubrica-general/llenar-rubrica/crear-aspecto/modificar-puntuacion/<int:pk>/<int:pka>', views.modificar_puntaje_rubrica, name="modificar_puntaje_rubrica"),
    path('cursos/docente/rubrica-general/llenar-rubrica/eliminar-aspecto/<int:pk>', views.eliminarAspecto, name="eliminarAspecto"),
    path('cursos/docente/rubrica-general/llenar-rubrica/eliminar-aspecto/<int:pk>/<int:rubrica>/<int:pka>', views.eliminarAspectoRubrica, name="eliminarAspectoRubrica"),
    path('cursos/docente/rubrica-general/llenar-rubrica/crear-aspecto/puntuar-aspecto/<int:pke>/<int:pka>/<int:pk>', views.puntuarAspecto, name="puntuarAspecto"),
    path('cursos/docente/rubrica/review/<int:pk>/<int:pka>', views.rubricaFinalizada, name="rubricaFinalizada"),
    path('cursos/docente/rubrica/review/descarga_rubrica_pdf/<int:pk>', views.descarga_rubrica_pdf, name="descarga_rubrica_pdf"),
    path('cursos/docente/rubricas/<int:pk>', views.misRubricas, name="misRubricas"),
    path('cursos/docente/rubricas/aplicar-rubrica/<int:pk>/<int:pka>', views.aplicarRubrica, name="aplicarRubrica"),
    path('cursos/docente/rubricas/aplicar-rubrica/evaluar/<int:pk>/<int:pka>/<slug:alumno>', views.evaluarRubrica, name="evaluarRubrica"),
    path('cursos/docente/rubricas/aplicar-rubrica/evaluar-grupo/<int:pk>/<int:pka>/<slug:grupo>', views.evaluarRubricaGrupo, name="evaluarRubricaGrupo"),    
    path('cursos/docente/detalle-curso/notas-alumnos/descargar-notas-alumnos/<int:pk>/<int:pka>/<int:rubric>/<int:puntaje_evaluacion>', views.plantilla_evaluacion_rubrica_alumnos_excel.as_view(), name="plantilla_evaluacion_rubrica_alumnos_excel"),
    path('cursos/docente/detalle-curso/notas-alumnos/descargar-puntaje-grupos/<int:pk>/<int:pka>/<int:rubric>/<int:puntaje_evaluacion>', views.plantilla_evaluacion_rubrica_grupos_excel.as_view(), name="plantilla_evaluacion_rubrica_grupos_excel"),

    #------------- MANTENEDORES -------------------------
    path('Mantenedores/crear-aspecto', views.agregarAspectoMantenedor, name="agregarAspectoMantenedor"),
    path('Mantenedores/crear-aspecto/definiciones/<int:pk>', views.puntuarAspectoMantenedores, name="puntuarAspectoMantenedores"),  


    #----------------COEVALUACIONES -----------------------
    path('Coevaluaciones/descarga-coevaluaciones/general', views.coevaluaciones, name="coevaluaciones"),    
    path('Coevaluaciones/descarga-coevaluaciones/evaluaciones/<int:pk>', views.coevaluaciones_evaluaciones, name="coevaluaciones_evaluaciones"),
    path('cursos/docente/detalle-curso/notas-alumnos/descargar-coevaluacion/<int:pk>/<int:pka>', views.plantilla_descarga_coevaluacion_alumnos.as_view(), name="plantilla_descarga_coevaluacion_alumnos"),      
]