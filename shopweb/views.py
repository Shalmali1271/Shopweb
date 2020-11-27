from django.shortcuts import render
from django.views.generic import ListView , DetailView
from .models import Product

# Create your views here.
class HomeView(ListView) :
    model = Product
    template_name = 'index.html'

class ItemDetailView(DetailView) :
    model = Product
    template_name = 'single_product.html'
    
class ProductView(ListView) :
    model = Product
    newest = Product.objects.order_by('entry')
    template_name = 'products.html'

# def products (request) : 
#     prods = Product.objects.all()
#     return render(request,'products.html',{'prods': prods})
