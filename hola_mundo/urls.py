from django.contrib import admin
from django.urls import path
from mensajes import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('hola/', views.hola),
]
