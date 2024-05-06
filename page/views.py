from django.shortcuts import render


from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    response_content = "Hello, world!"

    return HttpResponse(response_content)
    
