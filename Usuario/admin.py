from django.contrib import admin
from .models import Persona
from django.contrib.auth.models import AbstractUser, User

# Register your models here.
admin.site.register(Persona)
