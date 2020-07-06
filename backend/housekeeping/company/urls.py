from django.urls import path
from . import views

app_name = 'housekeeping'

urlpatterns = [
    path('new/', views.new),
    path('show/<int:companyId>', views.show),
    path('my/', views.my)
]
