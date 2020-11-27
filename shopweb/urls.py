from django.urls import path
from django.conf.urls import url

from .views import (
    ProductView,
    ItemDetailView,
    HomeView
)

urlpatterns =[
    path("index/",HomeView.as_view(),name = 'index'),
    path("products/",ProductView.as_view() ,name = 'products'),
    path("single_product/<slug>/", ItemDetailView.as_view() , name='single_product')
    ]

app_name = 'shopweb'