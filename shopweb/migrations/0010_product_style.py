# Generated by Django 3.1.2 on 2020-11-28 06:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shopweb', '0009_auto_20201127_1925'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='style',
            field=models.TextField(default='new'),
            preserve_default=False,
        ),
    ]