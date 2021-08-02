from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Curso, Asignatura

class CursoForm(forms.ModelForm):
	
	class Meta:
		model = Curso
		fields = [
			'nombre',
			'sigla',
			'carrera',
		]
		labels = {
			'nombre': 'Nombre Curso:',
			'sigla': 'Sigla:',
			'carrera': 'Seleccione Carrera:',
		}
		widgets = {
			'nombre': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Taller de Ingeniería de Software'}),
			'sigla': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: INF4540'}),
			'carrera': forms.Select(attrs={'class': 'form-control'}),
		}



class AsignaturaForm(forms.ModelForm):
	
	class Meta:
		model = Asignatura
		fields = [
			'semestre',
			'anio',
		]
		labels = {
			'semestre': 'Semestre:',
			'anio': 'Año:',
		}
		widgets = {
			'semestre': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: 1 o 2'}),
			'anio': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: 2022'}),
		}