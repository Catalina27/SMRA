from django.contrib.auth.models import User
from django.db import models


# Create your models here.

class TipoUsuario(models.Model):
	nombre = models.CharField(max_length=20,null=True,blank=True)


class Persona(models.Model):
	user = models.OneToOneField(User, on_delete=models.CASCADE)
	rut = models.CharField(max_length=13, null=True, blank=True)
	telefono = models.CharField(max_length=15, null=True, blank=True)
	foto = models.ImageField(blank=True,null=True)
	tipo_usuario = models.ForeignKey(TipoUsuario, null=True, blank = True, on_delete=models.CASCADE)

class Alumno(models.Model):
	rut = models.CharField(max_length=13, null=False, blank=False, primary_key=True)
	nombre = models.CharField(max_length=100, null=False, blank=False)
	apellido_pat = models.CharField(max_length=50, null=False, blank=False)
	apellido_mat = models.CharField(max_length=50, null=False, blank=False)
	mail = models.EmailField(null=False, blank=True)
	telefono = models.IntegerField(null=True, blank=True)

	def __str__(self):
		return str(self.rut) + " - " + self.nombre + " " + self.apellido_pat + " " + self.apellido_mat

