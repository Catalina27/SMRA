from django.db import models
from Carrera.models import Carrera

# Create your models here.

class Area(models.Model):
	carrera = models.ManyToManyField(Carrera,blank=True,through= 'Areas_carreras', related_name='Areas_carreras')
	nombre = models.CharField(max_length=100,null=False,blank=False)

	def __str__(self):
		return self.nombre

class Areas_carreras(models.Model):
	carrera = models.ForeignKey(Carrera,blank=True,null=True,on_delete=models.CASCADE)
	area = models.ForeignKey(Area,blank=True,null=True,on_delete=models.CASCADE)

	def __str__(self):
		return self.area.nombre + ' - ' + self.carrera.nombre  