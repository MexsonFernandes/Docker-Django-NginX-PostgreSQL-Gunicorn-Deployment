from django.db import models

# Create your models here.

class TestModel(models.Model):
	test = models.CharField(max_length=10)
