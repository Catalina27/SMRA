from django.db import models
from Universidad.models import Universidad

# Create your models here.

class Carrera(models.Model):
	universidad = models.ForeignKey(Universidad, null=True, blank=True, on_delete=models.CASCADE)
	nombre = models.CharField(max_length=100, null=False, blank=False)

	def __str__(self):
		return self.nombre