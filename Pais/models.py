from django.db import models

# Create your models here.

class Pais(models.Model):
	nombre = models.CharField(max_length=50,null=False,blank=False)

	def __str__(self):
		return str(self.nombre)
