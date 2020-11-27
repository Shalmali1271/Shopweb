from django.contrib import admin
from .models import Product,Order , OrderItem

# Register your models here.
admin.site.register(Product)
admin.site.register(OrderItem)
admin.site.register(Order)