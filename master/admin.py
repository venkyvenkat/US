from django.contrib import admin
from .models import ImmigrationStatus,ImmigrationSection,Ethnicity,Race,EyeColor,HairColor,Country,State,ApplicationCategory,PermanentResident,AppartmentType,UscisAdjustmentStatus,PortofEntry,PreparerInformation,ApplicableBoxes

admin.site.site_header = 'UsCityzens'
admin.site.site_title = 'UsCityzens'
admin.site.index_title = ''

class ImmigrationStatusAdmin(admin.ModelAdmin):
    list_display = [field.name for field in ImmigrationStatus._meta.fields if field.name not in ('id')]
    # #list_display.insert(0, '__str__')
admin.site.register(ImmigrationStatus,ImmigrationStatusAdmin)

class ImmigrationSectionAdmin(admin.ModelAdmin):
    list_display = [field.name for field in ImmigrationSection._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(ImmigrationSection,ImmigrationSectionAdmin)

class EthnicityAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Ethnicity._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(Ethnicity,EthnicityAdmin)

class RaceAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Race._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(Race,RaceAdmin)

class EyeColorAdmin(admin.ModelAdmin):
    list_display = [field.name for field in EyeColor._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(EyeColor,EyeColorAdmin)

class HairColorAdmin(admin.ModelAdmin):
    list_display = [field.name for field in HairColor._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(HairColor,HairColorAdmin)

class CountryAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Country._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(Country,CountryAdmin)

class StateAdmin(admin.ModelAdmin):
    list_display = [field.name for field in State._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(State,StateAdmin)

class ApplicationCategoryAdmin(admin.ModelAdmin):
    list_display = [field.name for field in ApplicationCategory._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(ApplicationCategory,ApplicationCategoryAdmin)

class PermanentResidentAdmin(admin.ModelAdmin):
    list_display = [field.name for field in PermanentResident._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(PermanentResident,PermanentResidentAdmin)

class AppartmentTypeAdmin(admin.ModelAdmin):
    list_display = [field.name for field in AppartmentType._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(AppartmentType,AppartmentTypeAdmin)

class UscisAdjustmentStatusAdmin(admin.ModelAdmin):
    list_display = [field.name for field in UscisAdjustmentStatus._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(UscisAdjustmentStatus,UscisAdjustmentStatusAdmin)

class PortofEntryAdmin(admin.ModelAdmin):
    list_display = [field.name for field in PortofEntry._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(PortofEntry,PortofEntryAdmin)

class PreparerInformationAdmin(admin.ModelAdmin):
    list_display = [field.name for field in PreparerInformation._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(PreparerInformation,PreparerInformationAdmin)

class ApplicableBoxesAdmin(admin.ModelAdmin):
    list_display = [field.name for field in ApplicableBoxes._meta.fields if field.name not in ('id')]
    #list_display.insert(0, '__str__')
admin.site.register(ApplicableBoxes,ApplicableBoxesAdmin)