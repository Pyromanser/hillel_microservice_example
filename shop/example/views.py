from django.shortcuts import render, HttpResponse


def index(requests):
    return HttpResponse("Hello world!")
