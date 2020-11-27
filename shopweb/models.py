from django.db import models
from django.shortcuts import reverse

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
        return reverse("shopweb:single_product" , kwargs = {
            'slug' : self.slug
        })