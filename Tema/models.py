from django.db import models

# Create your models here.
class Topico(models.Model):
	nombre = models.CharField(max_length=400, null=True, blank=True)

	def __str__(self):
		return self.nombre
