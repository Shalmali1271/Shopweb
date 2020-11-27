from django.db import models
from django.shortcuts import reverse
from django.conf import settings
from django.db.models.signals import post_save

# Create your models here.

class Product(models.Model) :
    name = models.CharField(max_length=100)
    img = models.ImageField(upload_to = 'imageup')
    desc = models.TextField()
    price = models.IntegerField()
    slug = models.SlugField()
    freatured = models.BooleanField()
    entry = models.DateField()
    

    def __str__(self):
      return self.name

    def get_absolute_url(self) :
        return reverse("shopweb:add-to-cart" , kwargs = {
            'slug' : self.slug
        })

    def get_add_to_cart_url(self) :
        return reverse("shopweb:add-to-cart" , kwargs = {
            'slug' : self.slug
        })

    def get_remove_from_cart_url(self) :
        return reverse("shopweb:remove-from-cart" , kwargs = {
            'slug' : self.slug
        })

class OrderItem(models.Model) :
    user = models.ForeignKey(settings.AUTH_USER_MODEL,
            on_delete = models.CASCADE , blank=True , null = True)
    ordered =  models.BooleanField(default=False)
    item =  models.ForeignKey(Product , on_delete = models.CASCADE)
    quantity = models.IntegerField(default=1)

    def __str__(self):
      return f"{self.quantity} of {self.item.name}"

class Order(models.Model) :
    user = models.ForeignKey(settings.AUTH_USER_MODEL , on_delete = models.CASCADE)
    items = models.ManyToManyField(OrderItem)
    start_date = models.DateTimeField(auto_now_add = True)
    ordered_date = models.DateTimeField()
    ordered = models.BooleanField(default=False)


