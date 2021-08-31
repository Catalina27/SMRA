from django.db import models
from Curso.models import Asignatura
from django.contrib.auth.models import AbstractUser, User

# Create your models here.

class RA(models.Model):
	asignatura = models.ForeignKey(Asignatura, null=True, blank=True, on_delete=models.CASCADE)
	nombre = models.CharField(max_length=300, null=False, blank=False)
	codigo = models.CharField(max_length=10, null=True, blank=True)
	autor = models.ForeignKey(User, null=True, blank=True, on_delete=models.CASCADE)

	def __str__(self):
		return self.codigo
