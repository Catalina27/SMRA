from django.db import models

# Create your models here.
class Tipo_contenido(models.Model):
	nombre = models.CharField(max_length=100,null=False,blank=False)

	def __str__(self):
		return self.nombre

class Contenido(models.Model):
	nombre = models.CharField(max_length=100,null=False,blank=False)
	tipo = models.ForeignKey(Tipo_contenido,blank=True, null=True,on_delete=models.CASCADE)

	def __str__(self):
		return self.nombre



