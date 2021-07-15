from django.db import models
from Pais.models import Pais

# Create your models here.

class Universidad(models.Model):
	pais = models.ForeignKey(Pais, null=True, blank=True, on_delete=models.CASCADE)
	nombre = models.CharField(max_length=100, blank=False, null=False)

	def __str__(self):
		return str(self.nombre) + ' (' + str(self.pais.nombre) + ')'