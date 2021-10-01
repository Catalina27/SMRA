from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Rubrica, Topico_rubricas, Puntaje, Topico, Evaluar_Alumnos_Coevaluacion, Calificacion_aspecto, Aplicar_Rubrica,Aplicar_RubricaGrupo 
from django.utils.safestring import mark_safe


class Evaluar_Alumnos_CoevaluacionForm(forms.ModelForm):
	
	class Meta:
		model = Evaluar_Alumnos_Coevaluacion
		fields = [
			'opinion',
		]
		labels = {
			'opinion': 'Seleccione',
		}
		widgets = {
			'opinion': forms.Select(attrs={'class': 'form-control'}),
		}


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

class Aplicar_RubricaForm(forms.ModelForm):
	
	class Meta:
		model = Aplicar_Rubrica
		fields = [
			'calificacion',
		]
		labels = {
			'calificacion': 'Seleccione:',
		}
		widgets = {
			'calificacion': forms.Select(attrs={'class': 'form-control'}),
		}

class Aplicar_RubricaGrupoForm(forms.ModelForm):
	
	class Meta:
		model = Aplicar_RubricaGrupo
		fields = [
			'calificacion',
		]
		labels = {
			'calificacion': 'Seleccione:',
		}
		widgets = {
			'calificacion': forms.Select(attrs={'class': 'form-control'}),
		}

class Topico_rubricasForm(forms.ModelForm):

	class Meta:
		model = Topico_rubricas
		fields = [
			'topico',
			'ponderacion',
		]
		labels = {
			'topico': 'Aspecto:',
			'ponderacion': 'Ponderación:',
		}
		widgets = {
			'topico': forms.Select(attrs={'class': 'form-control'}),
			'ponderacion': forms.NumberInput(attrs={'class': 'form-control', 'min':'1', 'max':'100'}),
		}


class Calificacion_aspecto_Form(forms.ModelForm):

	class Meta:
		model = Calificacion_aspecto
		fields = [
			'valor',
		]
		labels = {
			'valor': 'Puntaje:',
		}
		widgets = {
			'valor': forms.NumberInput(attrs={'class': 'form-control', 'min':'1', 'max':'100'}),
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
