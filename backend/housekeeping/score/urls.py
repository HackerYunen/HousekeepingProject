from django.urls import path
from . import views

app_name = 'housekeeping'

urlpatterns = [
    path('my/', views.myScore),
    path('service/<int:serviceId>', views.serviceScore),
    path('new/', views.newScore)
]
