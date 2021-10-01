from django.db import models
from Usuario.models import Persona, Alumno
from datetime import datetime, date
from Curso.models import Evaluacion,Curso,Grupos_Alumnos,Grupos
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

#MODIFICAR A ASPECTO COMO MANTENEDOR
class Topico(models.Model):
	nombre = models.CharField(max_length=400, null=True, blank=True)
	#rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	estado = models.CharField(max_length=20,null=False, blank=False,default='Sin Definir')
	user = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
	#ponderacion = models.IntegerField()

	def __str__(self):
		return self.nombre


class Calificacion_aspecto(models.Model):
	nombre = models.CharField(max_length=15, null=True, blank=True)
	valor = models.IntegerField(null=True,blank=True)
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	flag = models.BooleanField(default=True)

	def __str__(self):
		return self.nombre


class Puntaje(models.Model):
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	descripcion = models.CharField(max_length=400, null=True, blank=True)
	calificacion = models.ForeignKey(Calificacion_aspecto,null=True, blank=True, on_delete=models.CASCADE)
	topico = models.ForeignKey(Topico,null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return str(self.topico.nombre)


class Topico_rubricas(models.Model):
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	topico = models.ForeignKey(Topico,null=True, blank=True, on_delete=models.CASCADE)
	ponderacion = models.IntegerField(null=True,blank=True) #CAMBIAR A PONDERACION

	def __str__(self):
		return self.topico.nombre


class Aspectos_Coevaluacion(models.Model):
	nombre = models.CharField(max_length=100, null=True, blank=True)
	codigo = models.CharField(max_length=2, null=True, blank=True)

	def __str__(self):
		return self.nombre


class Calificacion_Coevaluacion(models.Model):
	nombre = models.CharField(max_length=30, null=True, blank=True)
	valor = models.IntegerField(null=True,blank=True)
	flag = models.BooleanField(default=True)

	def __str__(self):
		return self.nombre


class Descripcion_Aspectos_Coevaluacion(models.Model):
	aspecto = models.ForeignKey(Aspectos_Coevaluacion, null=True, blank=True, on_delete=models.CASCADE)
	nombre = models.CharField(max_length=1000, null=True, blank=True)
	calificacion = models.ForeignKey(Calificacion_Coevaluacion, null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return self.nombre

class Califica(models.Model):
	nombre = models.CharField(max_length=1,blank=True, null=True)

	def __str__(self):
		return self.nombre

class Evaluar_Alumnos_Coevaluacion(models.Model):
	user = models.ForeignKey(User,blank=True, null=True, on_delete=models.CASCADE)
	alumno = models.ForeignKey(Alumno,null=True, blank=True, on_delete=models.CASCADE)
	grupo = models.ForeignKey(Grupos_Alumnos,null=True, blank=True, on_delete=models.CASCADE)
	evaluacion = models.ForeignKey(Evaluacion, blank=True, null=True, on_delete=models.CASCADE)
	opinion = models.ForeignKey(Califica,blank=True, null=True,on_delete=models.CASCADE)

	def __str__(self):
		return self.descripcion.nombre

class Aplicar_Rubrica(models.Model):
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	evaluacion = models.ForeignKey(Evaluacion, blank=True, null=True, on_delete=models.CASCADE)
	alumno = models.ForeignKey(Alumno,null=True, blank=True, on_delete=models.CASCADE)
	aspecto = models.ForeignKey(Topico,null=True, blank=True, on_delete=models.CASCADE)
	calificacion = models.ForeignKey(Calificacion_aspecto,null=True, blank=True, on_delete=models.CASCADE)
	flag = models.BooleanField(default=True)
	grupo = models.ForeignKey(Grupos,null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return self.alumno.pk


class Aplicar_RubricaGrupo(models.Model):
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	evaluacion = models.ForeignKey(Evaluacion, blank=True, null=True, on_delete=models.CASCADE)
	aspecto = models.ForeignKey(Topico,null=True, blank=True, on_delete=models.CASCADE)
	calificacion = models.ForeignKey(Calificacion_aspecto,null=True, blank=True, on_delete=models.CASCADE)
	flag = models.BooleanField(default=True)
	grupo = models.ForeignKey(Grupos,null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return self.grupo.pk