from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Rubrica, Topico_rubricas, Puntaje, Topico

class RubricaForm(forms.ModelForm):
	
	class Meta:
		model = Rubrica
		fields = [
			'nombre',
			'tipo',
			'is_private',
		]
		labels = {
			'nombre': 'Nombre Rúbrica:',
			'tipo': 'Seleccione Tipo:',
			'is_private': '¿Desea compartir  la rúbrica con otros usuarios?',
		}
		widgets = {
			'nombre': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Rúbrica Avance Proyecto INF4540-1'}),
			'tipo': forms.Select(attrs={'class': 'form-control'}),
			'is_private': forms.CheckboxInput(),
		}


class Topico_rubricasForm(forms.ModelForm):

	class Meta:
		model = Topico_rubricas
		fields = [
			'topico',
			'puntaje',
		]
		labels = {
			'topico': 'Aspecto:',
			'puntaje': 'Puntaje:',
		}
		widgets = {
			'topico': forms.Select(attrs={'class': 'form-control'}),
			'puntaje': forms.Select(attrs={'class': 'form-control'}),
		}


class PuntajeForm(forms.ModelForm):

	class Meta:
		model = Puntaje
		fields = [
			'descripcion',
		]
		labels = {
			'descripcion': 'Descripción:',
		}
		widgets = {
			'descripcion': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Cumple las tareas asignadas en los plazos requeridos'}),
		}


class TopicoForm(forms.ModelForm):
	
	class Meta:
		model = Topico
		fields = [
			'nombre',
		]
		labels = {
			'nombre': 'Aspecto:',
		}
		widgets = {
			'nombre': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Cumplimiento de tareas asignadas'}),
		}
