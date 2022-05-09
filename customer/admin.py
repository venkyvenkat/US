from django.contrib import admin
from .models import Customer,Order,Eligibility,PersonelDetails,MailingAddress,BirthInformation,BiographicInformation,ApplicationForm,PermanentResident,ApplicantInformation

admin.site.site_header = 'UsCityzens'
admin.site.site_title = 'UsCityzens'
admin.site.index_title = ''

class CustomerAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Customer._meta.fields if field.name not in ('id')]
    # #list_display.insert(0, '__str__')
admin.site.register(Customer,CustomerAdmin)

class OrderAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Order._meta.fields if field.name not in ('id')]
    # #list_display.insert(0, '__str__')
admin.site.register(Order,OrderAdmin)

class EligibilityAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Eligibility._meta.fields if field.name not in ('id')]
    # #list_display.insert(0, '__str__')
admin.site.register(Eligibility,EligibilityAdmin)

class PersonelDetailsAdmin(admin.ModelAdmin):
    list_display = [field.name for field in PersonelDetails._meta.fields if field.name not in ('id')]
    # #list_display.insert(0, '__str__')
admin.site.register(PersonelDetails,PersonelDetailsAdmin)