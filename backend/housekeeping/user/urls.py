from django.urls import path
from . import views

app_name = 'housekeeping'

urlpatterns = [
    path('login/', views.login),
    path('register/', views.register),
    path('changepwd/', views.changePassword),
    path('forgetpwd/', views.forgetPassword),
    path('completeusi/', views.completeUserInfo),
    path('showusi/<int:userId>', views.showUserInfo)
]
