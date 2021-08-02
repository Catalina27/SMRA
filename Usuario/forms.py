from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import Persona, Alumno

class ExtendedUserCreationForm(UserCreationForm):
	email = forms.EmailField(required=True)
	first_name = forms.CharField(max_length=30)
	last_name = forms.CharField(max_length=150)

	class Meta:
		model = User
		fields = ('username','email','first_name','last_name','password1','password2')


	def save(self,commit=True):
		user = super().save(commit=False)
		user.email = self.cleaned_data['first_name']
		user.first_name = self.cleaned_data['first_name']
		user.last_name = self.cleaned_data['last_name']


		if commit:
			user.save()
		return user


class PersonaForm(forms.ModelForm):
	class Meta:
		model = Persona
		fields = ('rut','telefono')


class AlumnoForm(forms.ModelForm):
	
	class Meta:
		model = Alumno
		fields = [
			'rut',
			'nombre',
			'apellido_pat',
			'apellido_mat',
			'mail',
			'telefono',
		]
		labels = {
			'rut': 'RUT:',
			'nombre': 'Nombre',
			'apellido_pat': 'Apellido Paterno',
			'apellido_mat': 'Apellido Materno',
			'mail': 'Mail',
			'telefono': 'Teléfono',
		}
		widgets = {
			'rut': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: 19271880-5'}),
			'nombre': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: Camilo'}),
			'apellido_pat': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: Fernández'}),
			'apellido_mat': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: Vivanco'}),
			'mail': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Ej: camilo.fernandez.v@mail.pucv.cl'}),
			'telefono': forms.NumberInput(attrs={'class': 'form-control','placeholder': 'Ej: 933111098'}),
		}
