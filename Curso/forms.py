from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Curso, Asignatura, Evaluacion, Evaluacion_alumnos, Archivo, Archivo_notas

class AsignaturaForm(forms.ModelForm):
	
	class Meta:
		model = Asignatura
		fields = [
			'nombre',
			'sigla',
			'carrera',
		]
		labels = {
			'nombre': 'Nombre Asignatura:',
			'sigla': 'Sigla:',
			'carrera': 'Seleccione Carrera:',
		}
		widgets = {
			'nombre': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Taller de Ingeniería de Software'}),
			'sigla': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: INF4540'}),
			'carrera': forms.Select(attrs={'class': 'form-control'}),
		}



class CursoForm(forms.ModelForm):
	
	class Meta:
		model = Curso
		fields = [
			'semestre',
			'anio',
			'paralelo',
		]
		labels = {
			'semestre': 'Semestre:',
			'anio': 'Año:',
			'paralelo': 'Paralelo:',
		}
		widgets = {
			'semestre': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: 1 o 2'}),
			'anio': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: 2022'}),
			'paralelo': forms.Select(attrs={'class': 'form-control'}),
		}


class EvaluacionForm(forms.ModelForm):
	
	class Meta:
		model = Evaluacion
		fields = [
			'nombre',
			'tipo',
			'ponderacion',
			'is_grupal',
		]
		labels = {
			'nombre': 'Nombre:',
			'tipo': 'Tipo:',
			'ponderacion': '% ponderación:',
			'is_grupal': '¿Esta es una evaluación grupal?',
		}
		widgets = {
			'nombre': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Índices Autoevaluación'}),
			'tipo': forms.Select(attrs={'class': 'form-control','placeholder': 'Ej: Test'}),
			'ponderacion': forms.NumberInput(attrs={'class': 'form-control', 'min':'1', 'max':'100'}),
			'is_grupal': forms.CheckboxInput(),
		}


class Evaluacion_alumnoForm(forms.ModelForm):

	class Meta:
		model = Evaluacion_alumnos
		fields = [
			'evaluacion',
			'alumno',
			'nota',
		]
		labels = {
			'evaluacion':'Evaluación',
			'alumno':'Alumno',
			'nota':'Nota',			
		}
		widgets = {
			'evaluacion': forms.Select(attrs={'class': 'form-control','placeholder': 'Ej: Test'}),
			'alumno': forms.Select(attrs={'class': 'form-control','placeholder': 'Ej: Test'}),
			'nota': forms.NumberInput(attrs={'class': 'form-control','placeholder': 'Ej: 45','min':'1', 'max':'100'}),		
		}



class Archivo_form(forms.ModelForm):
	class Meta:
		model = Archivo
		fields = [
			'doc',
		]
		labels = {
			'doc': 'Sube tu archivo:',
		}
		widgets = {
			'doc': forms.ClearableFileInput(attrs={'class':'form-control'}),
		}


class Subir_notasform(forms.ModelForm):
	class Meta:
		model = Archivo_notas
		fields = [
			'doc',
		]
		labels = {
			'doc': 'Sube tu archivo:',
		}
		widgets = {
			'doc': forms.ClearableFileInput(attrs={'class':'form-control'}),
		}