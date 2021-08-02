from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Rubrica

class RubricaForm(forms.ModelForm):
	
	class Meta:
		model = Rubrica
		fields = [
			'nombre',
			'topico',
			'is_private',
		]
		labels = {
			'nombre': 'Nombre Rúbrica:',
			'topico': 'Tópico:',
			'is_private': '¿Desea compartir  la rúbrica con otros usuarios?',
		}
		widgets = {
			'nombre': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: Rúbrica Avance Proyecto INF4540-1'}),
			'topico': forms.Select(attrs={'class': 'form-control','required':''}),
			'is_private': forms.CheckboxInput(attrs={'class': 'form-control'}),
		}