from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import RA

class RAform(forms.ModelForm):
	
	class Meta:
		model = RA
		fields = [
			'nombre',
			'codigo',
		]
		labels = {
			'nombre': 'RA:',
			'codigo': 'Código:',
		}
		widgets = {
			'nombre': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: Comprende y diferencia las diferentes Metodologías del Desarrollo de Sistemas de Información'}),
			'codigo': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: RA1'}),
		}