from codecs import getencoder
from operator import truediv
from pyexpat import model
from re import VERBOSE
from tabnanny import verbose
from django.db import models
from django.contrib.auth.models import User
from master.models import *
from agent.models import Agent

class Customer(models.Model):

    user   	            = models.OneToOneField('auth.User',on_delete=models.CASCADE)
    firstname           = models.CharField(max_length=50,null=True,blank=True)
    middlename          = models.CharField(max_length=50,null=True,blank=True)
    lastname            = models.CharField(max_length=50,null=True,blank=True)
    email               = models.CharField(max_length=50,null=True,blank=True)
    phone               = models.CharField(max_length=20)
    photo               = models.ImageField(upload_to='customers/',null=True,blank=True,default='defaultprofile.jpeg')
    is_self_registered  = models.BooleanField(default=False)
    status              = models.CharField(max_length=50,choices=User_Status,default='active')

    def __str__(self):
        return self.middlename

    USERNAME_FIELD = 'uid'

class Order(models.Model):

    customer            = models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="Customer_Order")
    agent               = models.ForeignKey(Agent,on_delete=models.CASCADE,null=True,blank=True,related_name="Agent_Order")
    order_id            = models.CharField(max_length=50,null=True,unique=True)
    amount              = models.DecimalField(default=0.00, max_digits=15, decimal_places=2)
    status              = models.CharField(max_length=50,choices=Payment_Status,default='pending')
    response            = models.TextField(null=True,blank=True)
    created_at          = models.DateTimeField(default=timezone.now)
    updated_at          = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.customer.middlename


class Eligibility(models.Model):

    customer            = models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="Customer_EligiBility",null=True,blank=True)
    immigration_status  = models.ForeignKey(ImmigrationStatus,on_delete=models.CASCADE)
    immigration_section = models.ForeignKey(ImmigrationSection,on_delete=models.CASCADE)
    is_unites_state     = models.BooleanField(default=False)
    created_at          = models.DateTimeField(default=timezone.now)
    updated_at          = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.immigration_status.title

class PersonelDetails(models.Model):

    customer                            = models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="Customer_Personel")
    first_name                          = models.CharField(max_length=15)
    middle_name                         = models.CharField(max_length=15,null=True,blank=True)
    last_name                           = models.CharField(max_length=15)
    permanent_resident_card             = models.CharField(max_length=10,choices=Permanent_resident_card,default='no',verbose_name="Has your name legally changed since the issuance of your permanent Resident Card?")
    permanent_resident_card_first_name  = models.CharField(max_length=15,null=True,blank=True)
    permanent_resident_card_middle_name = models.CharField(max_length=15,null=True,blank=True)
    permanent_resident_card_last_name   = models.CharField(max_length=15,null=True,blank=True)
    pysical_address                     = models.CharField(max_length=10,choices=Physical_Address,default='no',verbose_name="Is customer malling address different than physical address")
    in_care_of_name                     = models.CharField(max_length=30,null=True,blank=True)
    streat_number_and_name              = models.CharField(max_length=30,null=True,blank=True)
    appartment                          = models.ForeignKey(AppartmentType,on_delete=models.CASCADE,null=True,blank=True)
    appartment_value                    = models.CharField(max_length=10,null=True,blank=True)
    city_or_town                        = models.CharField(max_length=30,null=True,blank=True)
    state                               = models.ForeignKey(State,on_delete=models.CASCADE,null=True,blank=True)
    country                             = models.ForeignKey(Country,on_delete=models.CASCADE,null=True,blank=True)
    zipcode                             = models.CharField(max_length=6,null=True,blank=True)
    province                            = models.CharField(max_length=30,null=True,blank=True)
    postal_code                         = models.CharField(max_length=30,null=True,blank=True)
    created_at                          = models.DateTimeField(default=timezone.now)
    updated_at                          = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.customer.middlename

class MailingAddress(models.Model):

    customer                = models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="Customer_mailing")
    in_care_of_name         = models.CharField(max_length=30)
    streat_number_and_name  = models.CharField(max_length=30)
    appartment              = models.ForeignKey(AppartmentType,on_delete=models.CASCADE)
    appartment_value        = models.CharField(max_length=10,null=True,blank=True)
    city_or_town            = models.CharField(max_length=30)
    state                   = models.ForeignKey(State,on_delete=models.CASCADE,related_name="Customer_mailing_address")
    country                 = models.ForeignKey(Country,on_delete=models.CASCADE)
    zipcode                 = models.CharField(max_length=6)
    province                = models.CharField(max_length=30,null=True,blank=True)
    postal_code             = models.CharField(max_length=30,null=True,blank=True)
    created_at              = models.DateTimeField(default=timezone.now)
    updated_at              = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.customer.middlename


class BirthInformation(models.Model):

    customer                        = models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="Customer_dob")
    date_of_birth                   = models.DateField()
    city_or_town_or_village_birth   = models.CharField(max_length=50)
    country_of_birth                = models.CharField(max_length=50)
    mother_first_name               = models.CharField(max_length=50)
    father_first_name               = models.CharField(max_length=50)
    created_at                      = models.DateTimeField(default=timezone.now)
    updated_at                      = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.customer.middlename

class BiographicInformation(models.Model):

    customer            = models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="Customer_biographic")
    gender              = models.CharField(max_length=10,choices=GenderData,default='male')
    ethnicity           = models.ForeignKey(Ethnicity,on_delete=models.CASCADE)
    race                = models.ManyToManyField(Race,null=True,blank=True)
    height_in_feet      = models.CharField(max_length=5)
    height_in_inches    = models.CharField(max_length=5)
    weight_in_pounds    = models.CharField(max_length=5)
    eye_color           = models.ForeignKey(EyeColor,on_delete=models.CASCADE)
    hair_color          = models.ForeignKey(HairColor,on_delete=models.CASCADE)
    created_at          = models.DateTimeField(default=timezone.now)
    updated_at          = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.customer.middlename


class ApplicationForm(models.Model):

    customer                            = models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="application_form",null=True,blank=True)
    alien_registration_number           = models.CharField(max_length=30,null=True,blank=True)
    alien_registration_number_status    = models.BooleanField(default=False,verbose_name="I no longer have my card and can't find this information ")
    category                            = models.ForeignKey(ApplicationCategory,on_delete=models.CASCADE,null=True,blank=True)
    category_status                     = models.BooleanField(default=False,verbose_name="I no longer have my card and can't find this information")
    resident_since                      = models.DateField(null=True,blank=True)
    resident_since_status               = models.BooleanField(default=False,verbose_name="I no longer have my card and can't find this information")
    created_at                          = models.DateTimeField(default=timezone.now)
    updated_at                          = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.customer.middlename


class BecomePermanentResident(models.Model):

    customer                            = models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="Customer_Pr")
    status                              = models.ForeignKey(PermanentResident,on_delete=models.CASCADE,verbose_name="How did you get your permanent resident or conditional permanent resident status?")
    consular_applied_visa               = models.CharField(max_length=50,null=True,blank=True,verbose_name="Location where you applied for an immigrant visa ")
    consular_issued_visa                = models.CharField(max_length=50,null=True,blank=True,verbose_name="Location where your immigrant visa was issued ")
    consula_state                       = models.ForeignKey(State,on_delete=models.CASCADE,related_name="Cusromer_PermanentResident",null=True,blank=True,verbose_name="Where was your destination when you came to the U.S.? ")
    consular_port_of_entry              = models.ForeignKey(PortofEntry,on_delete=models.CASCADE,related_name="Cusromer_Pot",null=True,blank=True,verbose_name="Port of Entry")
    adjustment_apply_status             = models.ForeignKey(UscisAdjustmentStatus,on_delete=models.CASCADE,related_name="Cusromer_Adj_Apply",null=True,blank=True,verbose_name="Which USCIS office did you apply for adjustment of status? ")
    other_uscis_office                  = models.CharField(max_length=50,null=True,blank=True,verbose_name="Other Which USCIS office did you apply for adjustment of status?")
    apply_enter_city_and_state_name     = models.CharField(max_length=50,null=True,blank=True,verbose_name="Enter City and State")
    adjustment_status_interview         = models.CharField(max_length=20,choices=ADJ_INTERVIEW,default='no',null=True,blank=True,verbose_name="Did you have an adjustment of status interview?")
    adjustment_granted_status           = models.ForeignKey(UscisAdjustmentStatus,on_delete=models.CASCADE,related_name="Cusromer_Adj_Granted",null=True,blank=True,verbose_name="Which USCIS office granted your adjustment of Status? ")
    granted_enter_city_and_state_name   = models.CharField(max_length=50,null=True,blank=True,verbose_name="Enter City and State ")
    processing_information_removed      = models.CharField(max_length=10,choices=PhysProcessing_Information,default='no',verbose_name="Have you EVER been in exclusion, deportation, or removal proceeding or ordered removed from the United States?",null=True,blank=True)
    processing_information_abonded      = models.CharField(max_length=10,choices=PhysProcessing_Information,default='no',verbose_name="Since you were granted permanent residence, have you EVER filed Form I-407, Abandonment by Alien of Status. as Lawful Permanent Resident, or otherwise been judged to have abandoned your status?",null=True,blank=True)
    created_at                          = models.DateTimeField(default=timezone.now)
    updated_at                          = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.customer.middlename


class ApplicantInformation(models.Model):
    customer                                    =   models.OneToOneField(Customer,on_delete=models.CASCADE,related_name="Customer_Application")
    daytime_phone_number                        =   models.CharField(max_length=50)
    mobile_phone_number                         =   models.CharField(max_length=50,null=True,blank=True)
    email                                       =   models.CharField(max_length=50,null=True,blank=True)
    other_social_security_number                =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Social Security Number(if any) ")
    uscis_online_account_number                 =   models.CharField(max_length=50,null=True,blank=True)
    
    interpreter_prepare_information_status      =   models.CharField(max_length=20,choices=Interpreter_PrepareIn_formation,default='no',verbose_name="Did you receive help from an interpreter to prepare this application")
    interpreter_terms_and_conditions_status     =   models.BooleanField(default=False,verbose_name="I can read and understand English, and have read and understand every question and instruction on this application and my answer to every question")
    interpreter_language                        =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Which language was used?")
    
    interpreter_first_name                      =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Interpreter's First Name(Given Name)")
    interpreter_last_name                       =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Interpreter's Last Name(Family Name)")
    interpreter_business_or_organization_name   =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Interpreter's Business or Organization Name")
    intepreter_streat_number_and_name           =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Street Number and Name")
    intepreter_appartment                       =   models.ForeignKey(AppartmentType,on_delete=models.CASCADE,null=True,blank=True)
    intepreter_appartment_value                 =   models.CharField(max_length=10,null=True,blank=True)
    intepreter_city                             =   models.CharField(max_length=50,null=True,blank=True,verbose_name="City")
    intepreter_state                            =   models.ForeignKey(State,on_delete=models.CASCADE,related_name="Intepreter_state",null=True,blank=True,verbose_name="State")
    intepreter_country                          =   models.ForeignKey(Country,on_delete=models.CASCADE,null=True,blank=True,verbose_name="Country")
    intepreter_zipcode                          =   models.CharField(max_length=6,null=True,blank=True,verbose_name="Zip Code")
    intepreter_province                         =   models.CharField(max_length=30,null=True,blank=True,verbose_name="Province")
    intepreter_postal_code                      =   models.CharField(max_length=30,null=True,blank=True,verbose_name="Postal Code")
    intepreter_daytime_phone_number             =   models.CharField(max_length=30,null=True,blank=True,verbose_name="Daytime Phone Number")
    intepreter_mobile_number                    =   models.CharField(max_length=30,null=True,blank=True,verbose_name="Mobile phone Number(if any)")
    intepreter_email                            =   models.CharField(max_length=30,null=True,blank=True,verbose_name="E-mail(if any)")
    
    preparer_status                             =   models.ForeignKey(PreparerInformation,on_delete=models.CASCADE,related_name="PreparerInformation",null=True,blank=True,verbose_name="Who prepared this application?")
    preparer_first_name                         =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Preparer's First Name(Given Name)")
    preparer_last_name                          =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Preparer's Last Name(Family Name)")
    preparer_business_or_organization_name      =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Preparer's Business or Organization Name")
    preparer_streat_number_and_name             =   models.CharField(max_length=50,null=True,blank=True,verbose_name="Street Number and Name")
    preparer_appartment                         =   models.ForeignKey(AppartmentType,on_delete=models.CASCADE,related_name="Prefererappartment",null=True,blank=True)
    preparer_appartment_value                   =   models.CharField(max_length=10,null=True,blank=True,verbose_name="")
    preparer_city                               =   models.CharField(max_length=50,null=True,blank=True,verbose_name="City")
    preparer_state                              =   models.ForeignKey(State,on_delete=models.CASCADE,related_name="preferer_state",null=True,blank=True,verbose_name="State")
    preparer_country                            =   models.ForeignKey(Country,on_delete=models.CASCADE,null=True,blank=True,related_name="Prefere_country",verbose_name="Country")
    preparer_zipcode                            =   models.CharField(max_length=6,null=True,blank=True,verbose_name="Zip Code")
    preparer_province                           =   models.CharField(max_length=30,null=True,blank=True,verbose_name="Province")
    preparer_postal_code                        =   models.CharField(max_length=30,null=True,blank=True,verbose_name="Postal Code")
    preparer_daytime_phone_number               =   models.CharField(max_length=30,null=True,blank=True,verbose_name="Daytime Phone Number")
    preparer_mobile_number                      =   models.CharField(max_length=30,null=True,blank=True,verbose_name="Mobile phone Number(if any)")
    preparer_email                              =   models.CharField(max_length=30,null=True,blank=True,verbose_name="E-mail(if any)")
    accomidation_status                         =   models.CharField(max_length=20,choices=Accomidations,default='no',verbose_name="Are you requesting an accommodation because of a disability and/or impairment?")
    explanation                                 =   models.ManyToManyField(ApplicableBoxes,null=True,blank=True)
    created_at                                  =   models.DateTimeField(default=timezone.now)
    updated_at                                  =   models.DateTimeField(default=timezone.now)

    def __str__(self):
        return self.customer.middlename



 
    