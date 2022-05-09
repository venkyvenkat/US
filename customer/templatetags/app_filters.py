from ast import Return
from django import template
register = template.Library()
import requests
from django.contrib.auth.models import User
from datetime import datetime, timedelta

@register.filter
def Get_Headding(menu,name):
    if menu == 'step_9' and name == 'email':
        resp = 'Other Information'
    elif menu == 'step_9' and name == 'applicant_onlineaccount':
        resp = 'Interpreter'
    elif menu == 'step_9' and name == 'applicant_read':
        resp = 'Preparer'
    else:
        resp = ''
    return resp