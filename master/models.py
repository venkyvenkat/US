from turtle import title
from django.db import models
from django.utils import timezone
from .fields import *

class ImmigrationStatus(models.Model):

    title           = models.CharField(unique=True,max_length=200)
    displat_title   = models.TextField()
    is_active       = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class ImmigrationSection(models.Model):

    immigrationstatus  = models.ForeignKey(ImmigrationStatus,on_delete=models.CASCADE)
    title              = models.TextField()
    is_active          = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class Ethnicity(models.Model):

    title           = models.CharField(unique=True,max_length=200)
    is_active       = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class Race(models.Model):

    title           = models.CharField(unique=True,max_length=200)
    is_active       = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class EyeColor(models.Model):

    title           = models.CharField(unique=True,max_length=200)
    is_active       = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class HairColor(models.Model):

    title           = models.CharField(max_length=200)
    is_active       = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class Country(models.Model):

    title           = models.CharField(unique=True,max_length=200)
    is_active       = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class State(models.Model):
    country             = models.ForeignKey(Country,on_delete=models.CASCADE,null=True,blank=True)
    title               = models.CharField(max_length=200)
    is_active           = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class ApplicationCategory(models.Model):

    title           = models.CharField(unique=True,max_length=200)
    is_active       = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class PermanentResident(models.Model):

    title                   = models.TextField(unique=True)
    is_adjustment           = models.BooleanField(default=True)
    is_active               = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class AppartmentType(models.Model):

    title                   = models.CharField(unique=True,max_length=50)
    information_available   = models.BooleanField(default=True)
    is_active               = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class UscisAdjustmentStatus(models.Model):

    title                   = models.CharField(unique=True,max_length=200)
    is_other                = models.BooleanField(default=False)
    is_active               = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class PortofEntry(models.Model):

    title                   = models.CharField(unique=True,max_length=200)
    is_active               = models.BooleanField(default=True)

    def __str__(self):
        return self.title

class PreparerInformation(models.Model):

    title                   = models.TextField(unique=True)
    information_available   = models.BooleanField(default=True)
    is_active               = models.BooleanField(default=True)

    def __str__(self):
        return self.title
 
class ApplicableBoxes(models.Model):

    title                   = models.TextField(unique=True)
    is_active               = models.BooleanField(default=True)

    def __str__(self):
        return self.title