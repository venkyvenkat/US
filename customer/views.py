import imp
import json
import re
from tkinter.messagebox import NO
from django.contrib import messages
from django.http import HttpResponse
from django.shortcuts import render,redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.hashers import make_password
from django.contrib.auth.models import User
from .forms import EligibilityForm,RegistrationForm,PersonelDetailsForm,MailingAddressForm,BirthInformationForm,BiographicInformationForm,Application_Form,BecomePermanentResidentForm,ApplicantInformationForm
from uscityzens.utils import check_module_login,check_previous_step
from django.contrib.auth import authenticate,logout as django_logout,login as auth_login
from agent.models import Agent
from .models import *


def home(request):
    if request.user.is_authenticated:
        return redirect('/dashboard')
    if request.method == "POST":
        uname = request.POST['username']
        raw_password = request.POST['password']
        user = authenticate(username=uname,password=raw_password)
        if not user:
            try:
                user_object = User.objects.get(email=uname)
                user = authenticate(username=user_object.username,password=raw_password)
            except:
                pass
        if user is not None:
            if Agent.objects.filter(user=user).exists():
                auth_login(request,user)
                request.session['login_type'] = 'agent'
                return redirect('customer:dashboard')
            else:
                messages.error(request,'Invalid credentials...')
                return redirect('/')
        else:
            messages.error(request,'Invalid credentials...')
            return redirect('/')
    context = {}
    return render(request,"customer/index.html",context)

@check_module_login
def dashboard(request):
    context = {}
    return render(request,"customer/dashboard.html",context)

@check_module_login
@check_previous_step
def view(request,pk):
    context = {
        'step1':EligibilityForm(instance=Eligibility.objects.filter(customer_id=pk).last()),
        'step2':RegistrationForm(instance=Customer.objects.filter(customer_id=pk).last()),
        'step3':PersonelDetailsForm(instance=PersonelDetails.objects.filter(customer_id=pk).last()),
        'step4':MailingAddressForm(instance=MailingAddress.objects.filter(customer_id=pk).last()),
        'step5':BirthInformationForm(instance=BirthInformation.objects.filter(customer_id=pk).last()),
        'step6':BiographicInformationForm(instance=BiographicInformation.objects.filter(customer_id=pk).last()),
        'step7':Application_Form(instance=ApplicationForm.objects.filter(customer_id=pk).last()),
        'step8':BecomePermanentResidentForm(instance=BecomePermanentResident.objects.filter(customer_id=pk).last()),
        'step9':ApplicantInformationForm(instance=ApplicantInformation.objects.filter(customer_id=pk).last()),
    }
    return render(request,"customer/view.html",context)

@check_module_login
@check_previous_step
def step_1(request,pk=0):
    # Eligibility
    instance = Eligibility.objects.filter(customer_id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = EligibilityForm(request.POST,instance=instance)
        else:
            form_data = EligibilityForm(request.POST)
        if form_data.is_valid():
            form_data.save()
            lastid = Eligibility.objects.latest('id')
            request.session['eligible'] = lastid.id
        else:
            print("##########","fAILED",form_data)
            return redirect('customer:step-1')
        if pk > 0:
            return redirect('customer:step-2',pk=pk)
        else:
            return redirect('customer:step-2')
    context = {
        'main_title':'Eligibility',
        'sub_title':'',
        'menu':'step_1',
        'objstatus':Eligibility.objects.filter(customer_id=pk).exists(),
        'form':EligibilityForm(instance=instance)
    }
    return render(request,"customer/step_1.html",context)

@check_module_login
@check_previous_step
def step_2(request,pk=None):
    # Registration
    instance = Customer.objects.filter(id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = RegistrationForm(request.POST,instance=instance)
        else:
            form_data = RegistrationForm(request.POST)
        if form_data.is_valid():
            Reg_Form = form_data.save(commit=False)
            firstname = request.POST['firstname'].strip()
            lastname = request.POST['lastname'].strip()
            email = request.POST['email'].strip()
            try:
                if instance is not None:
                    UserDeta = User.objects.get(id=instance.user_id)
                    UserDeta.firstname = firstname
                    UserDeta.lastname  = lastname
                    UserDeta.email     = email
                    UserDeta.password =  make_password('root123')
                    UserDeta.save()
                else:
                    try:
                        UserDeta = User.objects.create(first_name=firstname,last_name=lastname,email=email,username=email)
                        UserDeta.save()
                        Reg_Form.user = UserDeta
                    except:
                        pass
                Reg_Form.save()
                if Order.objects.filter(customer=Reg_Form).count() == 0:
                    newordid = 'ORD00{}'.format(Reg_Form.id)
                    Order.objects.create(customer=Reg_Form,agent=request.user.agent,order_id=newordid,amount=90,status='success')
                if 'eligible' in request.session.keys():
                    Eligible = Eligibility.objects.get(id=request.session['eligible'])
                    Eligible.customer = Reg_Form
                    Eligible.save()
                pk = Reg_Form.id
            except Exception as e:
                msg = '{}'.format(e)
                messages.error(request,msg)
                return redirect('customer:step-2')
        else:
            print("##########","fAILED",form_data)
            messages.error(request,form_data.errors)
            return redirect('customer:step-2')
        return redirect('customer:step-3',pk=pk)
    context = {
        'main_title':'Registration',
        'sub_title':'',
        'menu':'step_2',
        'backurl':'step-1/{}/'.format(pk),
        'form':RegistrationForm(instance=instance)
    }
    return render(request,"customer/step_2.html",context)

@check_module_login
@check_previous_step
def step_3(request,pk=None):
    # Personal Detail
    instance = PersonelDetails.objects.filter(customer_id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = PersonelDetailsForm(request.POST,instance=instance)
        else:
            form_data = PersonelDetailsForm(request.POST)
        if form_data.is_valid():
            form_data = form_data.save(commit=False)
            if instance is None:
                form_data.customer_id = pk
            form_data.save()
        else:
            messages.error(request,form_data.errors)
            return redirect('customer:step-3',pk=pk)
        return redirect('customer:step-4',pk=pk)
    context = {
        'main_title':'Personal Details',
        'sub_title':'',
        'menu':'step_3',
        'backurl':'step-2/{}/'.format(pk),
        'objstatus':ApplicantInformation.objects.filter(customer_id=pk).exists(),
        'form':PersonelDetailsForm(instance=instance)
    }
    return render(request,"customer/step_2.html",context)

@check_module_login
@check_previous_step
def step_4(request,pk=None):
    #Mailing Address
    instance = MailingAddress.objects.filter(customer_id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = MailingAddressForm(request.POST,instance=instance)
        else:
            form_data = MailingAddressForm(request.POST)
        if form_data.is_valid():
            form_data = form_data.save(commit=False)
            if instance is None:
                form_data.customer_id = pk
            form_data.save()
        else:
            messages.error(request,form_data.errors)
            return redirect('customer:step-4',pk)
        return redirect('customer:step-5',pk=pk)
    context = {
        'main_title':'Mailing Address',
        'sub_title':'',
        'menu':'step_4',
        'backurl':'step-3/{}/'.format(pk),
        'objstatus':ApplicantInformation.objects.filter(customer_id=pk).exists(),
        'form':MailingAddressForm(instance=instance)
    }
    return render(request,"customer/step_2.html",context)

@check_module_login
@check_previous_step
def step_5(request,pk=None):
    # Birth Information
    instance = BirthInformation.objects.filter(customer_id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = BirthInformationForm(request.POST,instance=instance)
        else:
            form_data = BirthInformationForm(request.POST)
        if form_data.is_valid():
            form_data = form_data.save(commit=False)
            if instance is None:
                form_data.customer_id = pk
            form_data.save()
        else:
            messages.error(request,form_data.errors)
            return redirect('customer:step-5',pk)
        return redirect('customer:step-6',pk=pk)
    context = {
        'main_title':'Birth Information ',
        'sub_title':'',
        'menu':'step_5',
        'backurl':'step-4/{}/'.format(pk),
        'objstatus':ApplicantInformation.objects.filter(customer_id=pk).exists(),
        'form':BirthInformationForm(instance=instance)
    }
    return render(request,"customer/step_2.html",context)

@check_module_login
@check_previous_step
def step_6(request,pk=None):
    # Biographic Information
    instance = BiographicInformation.objects.filter(customer_id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = BiographicInformationForm(request.POST,instance=instance)
        else:
            form_data = BiographicInformationForm(request.POST)
        if form_data.is_valid():
            form_data = form_data.save(commit=False)
            if instance is None:
                form_data.customer_id = pk
            form_data.save()
            racedata=request.POST.getlist('race')
            if racedata:
                form_data.race.clear()
                form_data.race.add(*racedata)
        else:
            messages.error(request,form_data.errors)
            return redirect('customer:step-6',pk)
        return redirect('customer:step-7',pk=pk)
    context = {
        'main_title':'Biographic Information',
        'sub_title':'',
        'menu':'step_6',
        'backurl':'step-5/{}/'.format(pk),
        'objstatus':ApplicantInformation.objects.filter(customer_id=pk).exists(),
        'form':BiographicInformationForm(instance=instance)
    }
    return render(request,"customer/step_2.html",context)

@check_module_login
@check_previous_step
def step_7(request,pk=None):
    # Application Form
    instance = ApplicationForm.objects.filter(customer_id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = Application_Form(request.POST,instance=instance)
        else:
            form_data = Application_Form(request.POST)
        if form_data.is_valid():
            form_data = form_data.save(commit=False)
            if instance is None:
                form_data.customer_id = pk
            form_data.save()
        else:
            messages.error(request,form_data.errors)
            return redirect('customer:step-7',pk)
        return redirect('customer:step-8',pk=pk)
    context = {
        'main_title':'Your Permanent Resident Card',
        'sub_title':'',
        'menu':'step_7',
        'backurl':'step-6/{}/'.format(pk),
        'objstatus':ApplicationForm.objects.filter(customer_id=pk).exists(),
        'form':Application_Form(instance=instance)
    }
    return render(request,"customer/step_2.html",context)

@check_module_login
@check_previous_step
def step_8(request,pk=None):
    # Becoming a Permanent Resident
    instance = BecomePermanentResident.objects.filter(customer_id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = BecomePermanentResidentForm(request.POST,instance=instance)
        else:
            form_data = BecomePermanentResidentForm(request.POST)
        if form_data.is_valid():
            form_data = form_data.save(commit=False)
            if instance is None:
                form_data.customer_id = pk
            form_data.save()
        else:
            messages.error(request,form_data.errors)
            return redirect('customer:step-8',pk)
        return redirect('customer:step-9',pk=pk)
    context = {
        'main_title':'Becoming a Permanent Resident',
        'sub_title':'',
        'menu':'step_8',
        'backurl':'step-7/{}/'.format(pk),
        'objstatus':ApplicantInformation.objects.filter(customer_id=pk).exists(),
        'form':BecomePermanentResidentForm(instance=instance)
    }
    return render(request,"customer/step_2.html",context)

@check_module_login
@check_previous_step
def step_9(request,pk=None):
    # Applicant Contact Information
    instance = ApplicantInformation.objects.filter(customer_id=pk).last()
    if request.method == "POST":
        if instance is not None:
            form_data = ApplicantInformationForm(request.POST,instance=instance)
        else:
            form_data = ApplicantInformationForm(request.POST)
        if form_data.is_valid():
            form_data = form_data.save(commit=False)
            if instance is None:
                form_data.customer_id = pk
            form_data.save()
            if 'explanation' in request.POST['explanation']:
                explanations=request.POST.getlist('explanation')
                if explanations:
                    form_data.explanation.clear()
                    form_data.explanation.add(*explanations)
            messages.success(request,"Compleated successfully")
        else:
            messages.error(request,form_data.errors)
        return redirect('customer:step-9',pk=pk)
    context = {
        'main_title':'Applicant Contact Information',
        'sub_title':'',
        'menu':'step_9',
        'backurl':'step-8/{}/'.format(pk),
        'objstatus':ApplicantInformation.objects.filter(customer_id=pk).exists(),
        'form':ApplicantInformationForm(instance=instance)
    }
    return render(request,"customer/step_2.html",context)

@check_module_login
def orders(request,slug):
    login_type = request.session['login_type']
    if slug == 'paid':
        customers = Order.objects.filter(agent=request.user.agent,status='success',customer__status__in=['active','inactive'])
    else:
        customers = Order.objects.filter(agent=request.user.agent,status__in=['failed','pending'],customer__status__in=['active','inactive'])
    context = {
        'orders':customers
    }
    return render(request,"customer/orders.html",context)

def logout(request):
    django_logout(request)
    return redirect('/')
