from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login
from .forms import ExtendedUserCreationForm, PersonaForm

# Create your views here.

def register(request):
	if request.method == 'POST':
		form = ExtendedUserCreationForm(request.POST)
		persona_form = PersonaForm(request.POST)

		if form.is_valid() and persona_form.is_valid():
			user = form.save()
			persona = persona_form.save(commit=False)
			persona.user = user
			persona.save()

			username = form.cleaned_data.get('username')
			password = form.cleaned_data.get('password1')
			user = authenticate(username=username, password=password)
			login(request,user)

			return redirect('home')

	else:
		form = ExtendedUserCreationForm()
		persona_form = PersonaForm()


	context = {'form':form, 'persona_form':persona_form}

	return render(request, 'registration/prueba.html',context)