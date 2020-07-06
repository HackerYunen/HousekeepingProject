from django.urls import path
from . import views

app_name = 'housekeeping'

urlpatterns = [
    path('new/', views.newWithDraw),
    path('my', views.myWithDraw)
]
