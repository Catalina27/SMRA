from django.db import models
from Usuario.models import Persona
from datetime import datetime, date
from Curso.models import Evaluacion,Curso
from django.contrib.auth.models import AbstractUser, User

# Create your models here.

class Estado_rubrica(models.Model):
	nombre = models.CharField(max_length=50, blank=True, null=True)

	def __str__(self):
		return self.nombre


class Tipo_rubrica(models.Model):
	nombre = models.CharField(max_length=100, null=True, blank=True)

	def __str__(self):
		return self.nombre


class Rubrica(models.Model):
	evaluacion = models.ForeignKey(Evaluacion, blank=True, null=True, on_delete=models.CASCADE)
	curso = models.ForeignKey(Curso, blank=True, null=True, on_delete=models.CASCADE)
	nombre = models.CharField(max_length=100, null=True, blank=True)
	#topico = models.ManyToManyField(Topico,blank=True,through= 'Topico_rubricas', related_name='Topico_rubricas')
	autor = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
	estado = models.ForeignKey(Estado_rubrica, blank=True, null=True, default= 1,on_delete=models.CASCADE)
	is_private = models.BooleanField(default=False)
	tipo = models.ForeignKey(Tipo_rubrica, blank=True, null=True, on_delete=models.CASCADE)
	fecha_creacion = models.DateField(default=date.today)

	def __str__(self):
		return self.nombre


class Topico(models.Model):
	nombre = models.CharField(max_length=400, null=True, blank=True)
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return self.nombre


class Calificacion_aspecto(models.Model):
	nombre = models.CharField(max_length=15, null=True, blank=True)

	def __str__(self):
		return self.nombre


class Puntaje(models.Model):
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	descripcion = models.CharField(max_length=400, null=True, blank=True)
	calificacion = models.ForeignKey(Calificacion_aspecto,null=True, blank=True, on_delete=models.CASCADE)
	topico = models.ForeignKey(Topico,null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return str(self.topico.nombre + ' ' + self.calificacion.nombre)

class Topico_rubricas(models.Model):
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	topico = models.ForeignKey(Topico,null=True, blank=True, on_delete=models.CASCADE)
	puntaje = models.ForeignKey(Puntaje, null=True, blank=True,on_delete=models.CASCADE)

	def __str__(self):
		return self.topico.nombre


