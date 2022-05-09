from django.db import models
from django.contrib.auth.models import User
from master.models import *

class Agent(models.Model):

    user   	      = models.OneToOneField('auth.User',on_delete=models.CASCADE)
    phone         = models.CharField(max_length=20)
    status        = models.CharField(max_length=50,choices=User_Status,default='active')

    def __str__(self):
        return self.user.first_name