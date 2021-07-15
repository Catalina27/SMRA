from django.db import models
from Curso.models import Curso

# Create your models here.

class RA(models.Model):
	curso = models.ForeignKey(Curso, null=True, blank=True, on_delete=models.CASCADE)
	nombre = models.CharField(max_length=100, null=False, blank=False)
	codigo = models.CharField(max_length=10, null=True, blank=True)

	def __str__(self):
		return self.codigo
