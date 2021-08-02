from django.db import models
from django.contrib.auth.models import AbstractUser, User
from Carrera.models import Carrera
from Usuario.models import Alumno
from Rubrica.models import Rubrica


# Create your models here.

class Curso(models.Model):
	nombre = models.CharField(max_length=100, null=False, blank=False)
	sigla = models.CharField(max_length=10, null=True, blank=True)
	autor = models.ForeignKey(User, null=True, blank=True, on_delete=models.CASCADE)
	carrera = models.ForeignKey(Carrera, null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return self.nombre


class Asignatura(models.Model):
	curso = models.ForeignKey(Curso, null=True, blank=True, on_delete=models.CASCADE)
	primer = '1'
	segundo = '2'
	semestre_options = (
		(primer, u'1'),
		(segundo, u'2'),
	)
	semestre = models.CharField(max_length=2, null=True, blank=True, choices=semestre_options)
	anio = models.CharField(max_length=4,null=True,blank=True)
	alumno = models.ManyToManyField(Alumno,blank=True,through= 'Asignatura_alumnos', related_name='Asignatura_alumnos')

	def __str__(self):
		return self.curso.nombre + self.curso.sigla


class Tipo_evaluacion(models.Model):
	nombre = models.CharField(max_length=10, null=True, blank=True)

	def __str__(self):
		return self.nombre


class Evaluacion(models.Model):
	asignatura = models.ForeignKey(Asignatura, null=True, blank=True, on_delete=models.CASCADE)
	nombre = models.CharField(max_length=50,null=True, blank=True)
	tipo = models.ForeignKey(Tipo_evaluacion, null=True, blank=True, on_delete=models.CASCADE)
	ponderacion = models.IntegerField(null=True, blank=True)
	alumno = models.ManyToManyField(Alumno,blank=True,through= 'Evaluacion_alumnos', related_name='Evaluacion_alumnos')
	rubrica = models.ForeignKey(Rubrica,null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return self.asignatura.curso.nombre


class Evaluacion_alumnos(models.Model):
	evaluacion = models.ForeignKey(Evaluacion, null=True, blank=True, on_delete=models.CASCADE)
	alumno = models.ForeignKey(Alumno, null=True, blank=True, on_delete=models.CASCADE)
	nota = models.IntegerField(null=True, blank=True)

	def __str__(self):
		return self.evaluacion.nombre


class Asignatura_alumnos(models.Model):
	asignatura = models.ForeignKey(Asignatura, null=True, blank=True, on_delete=models.CASCADE)
	alumno = models.ForeignKey(Alumno, null=True, blank=True, on_delete=models.CASCADE)
	evaluacion = models.ForeignKey(Evaluacion_alumnos, null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return self.asignatura.curso.nombre
