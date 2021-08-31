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
    path('cursos/docente/rubrica-general/llenar-rubrica/<int:pk>', views.llenarRubrica, name="llenarRubrica"),
    path('cursos/docente/rubrica-general/llenar-rubrica/crear-aspecto/<int:pk>', views.crearAspecto, name="crearAspecto"),
    path('cursos/docente/rubrica-general/llenar-rubrica/eliminar-aspecto/<int:pk>', views.eliminarAspecto, name="eliminarAspecto"),
    path('cursos/docente/rubrica-general/llenar-rubrica/crear-aspecto/puntuar-aspecto/<int:pk>/<int:pka>', views.puntuarAspecto, name="puntuarAspecto"),
    path('cursos/docente/rubricas/<int:pk>', views.misRubricas, name="misRubricas"),
]