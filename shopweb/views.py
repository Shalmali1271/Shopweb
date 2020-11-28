from django.shortcuts import render , redirect , get_object_or_404
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView , DetailView , View
from .models import Product , OrderItem , Order
from django.utils import timezone
from django.contrib import messages

# Create your views here.
class HomeView(ListView) :
    model = Product
    template_name = 'index.html'

class ItemDetailView(DetailView) :
    model = Product
    template_name = 'single_product.html'
    
class ProductView(ListView) :
    model = Product
    paginate_by = 6
    newest = Product.objects.order_by('entry')
    template_name = 'products.html'
    

class CartView(LoginRequiredMixin , View) :
    def get(self , *args , **kwargs) :
        try :
            order=Order.objects.get(user = self.request.user , ordered=False)
            context = {
                'object' : order
            }
            return render(self.request,'cart.html' , context)
        except :
            messages.error(self.request,"You don't have order!")
            return redirect("/")

@login_required(login_url = '/accounts/register')
def add_to_cart(request , slug) : 
    item = get_object_or_404(Product , slug = slug)
    order_item , created = OrderItem.objects.get_or_create(user = request.user , item = item , ordered = False)
    order_qs = Order.objects.filter(user = request.user , ordered=False)
    if order_qs.exists() :
        order = order_qs[0]
        if order.items.filter(item__slug = item.slug).exists() :
            order_item.quantity = +1
            order_item.save()
            messages.info(request, "This item quantity was updated.")
        else :
            order.items.add(order_item)
            messages.info(request, "This item was added to your cart.")
    else :
        ordered_date = timezone.now()
        order = Order.objects.create(
            user = request.user , 
            ordered_date=ordered_date)
        order.items.add(order_item)
        messages.info(request, "This item was added to your cart.")
    return redirect("shopweb:single_product" , slug = slug)

@login_required(login_url = '/accounts/register')
def remove_from_cart(request,slug) :
    item = get_object_or_404(Product , slug=slug)
    order_qs = Order.objects.filter(user = request.user , ordered=False)
    if order_qs.exists() :
        order = order_qs[0]
        if order.items.filter(item__slug = item.slug).exists() :
            order_item = OrderItem.objects.filter(user = request.user , ordered=False , item=item)[0]
            if order_item.quantity > 1:
                order_item.quantity -= 1
                order_item.save()
                messages.info(request, "This item quantity was updated.")
            else:
                order.items.remove(order_item)
                order_item.delete()
                messages.info(request, "This item was removed from your cart.")
            
        else :
            messages.info(request, "This item was not in your cart")
            return redirect("shopweb:single_product" , slug = slug)            
    else :
        messages.info(request, "You do not have an active order")
    return redirect("shopweb:single_product" , slug = slug)