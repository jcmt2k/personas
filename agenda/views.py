from django.shortcuts import HttpResponse

# Create your views here.
def index(requet):
    return HttpResponse("Hola, mundo. Estas en el index de agenda")
    