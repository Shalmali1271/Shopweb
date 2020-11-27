from django.urls import path
from django.contrib.auth import views as auth_views
from . import views

urlpatterns =[
    path("register" , views.register , name = "register"),
    path("login" , views.login , name = "login"),
    path("logout" , views.logout , name = "logout"),
    path('reset_password/', 
            auth_views.PasswordResetView.as_view(template_name = 'pass_reset.html'),
            name = 'reset_password'),
    path('reset_password_sent/' , 
            auth_views.PasswordResetDoneView.as_view(template_name = 'pass_sent.html'), 
            name = 'password_reset_done'),
    path('reset/<uidb64>/<token>/' , 
            auth_views.PasswordResetConfirmView.as_view(template_name = 'change_pass.html'), 
            name = 'password_reset_confirm'),
    path('reset_password_complete/' , 
            auth_views.PasswordResetCompleteView.as_view(template_name = 'reset_pass_complete.html'), 
            name = 'password_reset_complete')]