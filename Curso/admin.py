from django.contrib import admin
from .models import Archivo, Curso, Asignatura

# Register your models here.
admin.site.register(Archivo)
admin.site.register(Curso)
admin.site.register(Asignatura)