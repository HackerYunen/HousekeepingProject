from django.urls import path
from . import views

app_name = 'housekeeping'

urlpatterns = [
    path('index/<str:city>', views.indexHotRecommend),
    path('search/<str:title>/city/<str:city>', views.searchService),
    path('search/<str:title>/city/<str:city>/filter/<str:filter>', views.searchServiceFilter),
    path('new/', views.newService),
    path('unservice/<int:serviceId>', views.unService)
]
