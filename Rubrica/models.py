from django.db import models
from Tema.models import Topico
from Usuario.models import Persona

# Create your models here.

class Estado_rubrica(models.Model):
	nombre = models.CharField(max_length=50, blank=True, null=True)

	def __str__(self):
		return self.nombre

class Rubrica(models.Model):
	nombre = models.CharField(max_length=100, null=True, blank=True)
	topico = models.ManyToManyField(Topico,blank=True,through= 'Topico_rubricas', related_name='Topico_rubricas')
	autor = models.ForeignKey(Persona,blank=True, null=True, on_delete=models.CASCADE)
	estado = models.ForeignKey(Estado_rubrica, blank=True, null=True, on_delete=models.CASCADE)
	is_private = models.BooleanField(null=True, blank=True, default=True)

	def __str__(self):
		return self.nombre


class Topico_rubricas(models.Model):
	rubrica = models.ForeignKey(Rubrica, null=True, blank=True, on_delete=models.CASCADE)
	topico = models.ForeignKey(Topico,null=True, blank=True, on_delete=models.CASCADE)
	puntaje = models.IntegerField(null=True, blank=True)

	def __str__(self):
		return self.topico.nombre