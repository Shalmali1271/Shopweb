from django.urls import path
from django.conf.urls import url

from .views import (
    ProductView,
    ItemDetailView,
    HomeView,
    CartView,
    add_to_cart,
    remove_from_cart
)

urlpatterns =[
    path("index/",HomeView.as_view(),name = 'index'),
    path("products/",ProductView.as_view() ,name = 'products'),
    path("single_product/<slug>/", ItemDetailView.as_view() , name='single_product'),
    path("cart/",CartView.as_view(),name = 'cart'),
    path("add-to-cart/<slug>/" , add_to_cart , name = 'add-to-cart'),
    path("remove-from-cart/<slug>/" , remove_from_cart , name = 'remove-from-cart')
    ]

app_name = 'shopweb'