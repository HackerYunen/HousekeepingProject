from django.urls import path
from . import views

app_name = 'housekeeping'

urlpatterns = [
    path('my/', views.myOrder),
    path('company/', views.companyOrder),
    path('new/', views.newOrder),
    path('pay/<int:orderId>', views.payOrder),
    path('apply/<int:orderId>', views.applyOrder),
    path('showorder/<int:orderId>', views.showOrder),
    path('showappliedorder/<int:orderId>', views.showAppliedOrder)
]
