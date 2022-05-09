from re import L
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Customer,BecomePermanentResident,Order,Eligibility,PersonelDetails,MailingAddress,BirthInformation,BiographicInformation,ApplicationForm,PermanentResident,ApplicantInformation
from agent.models import Agent
from master.models import ImmigrationStatus,ImmigrationSection,Ethnicity,Race,EyeColor,HairColor,Country,State,ApplicationCategory,PermanentResident,AppartmentType,UscisAdjustmentStatus,PortofEntry,PreparerInformation,ApplicableBoxes
from django.forms.widgets import Media,MediaDefiningClass,Widget,TextInput,NumberInput,EmailInput,URLInput,PasswordInput,HiddenInput,MultipleHiddenInput,FileInput,ClearableFileInput,Textarea,DateInput,DateTimeInput,TimeInput,CheckboxInput,Select,NullBooleanSelect,SelectMultiple,RadioSelect,CheckboxSelectMultiple,MultiWidget,SplitDateTimeWidget,SplitHiddenDateTimeWidget,SelectDateWidget
from django.utils.safestring import mark_safe
from django.shortcuts import render
from django.utils.html import format_html_join
from django.utils.encoding import force_text
from django.forms.models import ModelMultipleChoiceField

class CustomChoiceField(forms.ModelMultipleChoiceField):
    def label_from_instance(self, obj):
        link ='<input type="radio" id="id_immigration_section_{}" name="immigration_section" class="custom-control-input">{}'.format(obj.id,obj.title)
        return mark_safe(link)

class CustomSelectMultiple(ModelMultipleChoiceField):
    def label_from_instance(self, obj):
        return "%s" %(obj.title)

class EligibilityForm(forms.ModelForm):
    
    immigration_status = forms.ModelChoiceField(widget=forms.RadioSelect,queryset=ImmigrationStatus.objects.filter(is_active=True),label='Select your current immigration status')
    is_unites_state = forms.BooleanField(widget=RadioSelect(choices=[(True, 'Yes'), (False, 'No')]),label="Are you currently in the United States ")
    immigration_section = forms.ModelChoiceField(widget=forms.RadioSelect,queryset=ImmigrationSection.objects.filter(is_active=True),label='Section B(To be used only by a conditional permanent resident ) ')
    
    class Meta:
        model = Eligibility
        fields = ('immigration_status','immigration_section','is_unites_state')
        exclude=('created_at','updated_at','customer')
    
    def __init__(self, *args, **kwargs):
        super(EligibilityForm, self).__init__(*args, **kwargs)
        self.fields['immigration_status'].widget.attrs['onclick'] = 'Get_Section(this.value);'
        self.fields['is_unites_state'].widget.attrs['onclick'] = 'Get_City_Status(this.value);'
        self.fields['immigration_status'].widget.attrs['onclick'] = 'Get_Section(this.value);'

class RegistrationForm(forms.ModelForm):
    class Meta:
        model = Customer
        fields = "__all__"
        exclude=('user','photo','is_self_registered','status',)
        
    def __init__(self, *args, **kwargs):
        super(RegistrationForm, self).__init__(*args, **kwargs)
        self.fields['phone'].label = 'Mobile Number'
        self.fields['firstname'].label = 'First Name'
        self.fields['lastname'].label = 'Last Name'
        self.fields['middlename'].label = 'Middle Name'

class PersonelDetailsForm(forms.ModelForm):
    class Meta:
        model = PersonelDetails
        fields = "__all__"
        exclude=('customer','created_at','updated_at',)
    
    def __init__(self, *args, **kwargs):
        super(PersonelDetailsForm, self).__init__(*args, **kwargs)
        self.fields['permanent_resident_card_first_name'].label = 'First Name'
        self.fields['permanent_resident_card_middle_name'].label = 'Middle Name'
        self.fields['permanent_resident_card_last_name'].label = 'Last Name'
        self.fields['appartment'].label = 'Is there an apartment,sulte or floor'
        self.fields['appartment'].widget.attrs['onchange'] = 'Take_name(this.value);'
        self.fields['permanent_resident_card'].widget.attrs['onchange'] = 'Get_Status(this.value);'
        self.fields['pysical_address'].widget.attrs['onchange'] = 'Pysical_Add(this.value);'
        self.fields['appartment'].label = 'Is there an apartment,sulte or floor'
        self.fields['in_care_of_name'].help_text = 'Physical address '
        self.fields['permanent_resident_card_first_name'].help_text = 'Provide your name exactly as it is printed on your current Permanent Resident Card Explain This?'

class MailingAddressForm(forms.ModelForm):
    class Meta:
        model = MailingAddress
        fields = "__all__"
        exclude=('customer','created_at','updated_at',)
        
    def __init__(self, *args, **kwargs):
        super(MailingAddressForm, self).__init__(*args, **kwargs)
        self.fields['appartment'].label = 'Is there an apartment,sulte or floor'
        self.fields['appartment'].widget.attrs['onchange'] = 'Take_name(this.value);'

class BirthInformationForm(forms.ModelForm):
    class Meta:
        model = BirthInformation
        fields = "__all__"
        exclude=('customer','created_at','updated_at',)

    def __init__(self, *args, **kwargs):
        super(BirthInformationForm, self).__init__(*args, **kwargs)
        self.fields['city_or_town_or_village_birth'].label = 'City/Town/Village of Birth'
        self.fields['mother_first_name'].label = "Mother's Name(First Name)"
        self.fields['father_first_name'].label = "Father's Name(First Name)"

class BiographicInformationForm(forms.ModelForm):
    class Meta:
        model = BiographicInformation
        fields = "__all__"
        exclude=('customer','created_at','updated_at',)
        
    race = CustomSelectMultiple(widget=forms.CheckboxSelectMultiple,queryset=Race.objects.all(),label="Race(select all applicable boxs)")

    def __init__(self, *args, **kwargs):
        super(BiographicInformationForm, self).__init__(*args, **kwargs)

class Application_Form(forms.ModelForm):
    class Meta:
        model = ApplicationForm
        fields = "__all__"
        exclude=('customer','created_at','updated_at',)
        
    def __init__(self, *args, **kwargs):
        super(Application_Form, self).__init__(*args, **kwargs)
        self.fields['alien_registration_number_status'].widget.attrs['onchange'] = 'Get_Number(this.value)'
        self.fields['category_status'].widget.attrs['onchange'] = 'Get_Category(this.value)'
        self.fields['resident_since_status'].widget.attrs['onchange'] = 'Get_Residence(this.value)'
    

class BecomePermanentResidentForm(forms.ModelForm):
    class Meta:
        model = BecomePermanentResident
        fields = "__all__"
        exclude=('customer','created_at','updated_at','other_uscis_office',)
        
    def __init__(self, *args, **kwargs):
        super(BecomePermanentResidentForm, self).__init__(*args, **kwargs)
        self.fields['consular_port_of_entry'].help_text = "Port of Entry"
        self.fields['consular_port_of_entry'].label = "Choose Entry Location "
        self.fields['processing_information_removed'].help_text = "Processing Information "
        self.fields['status'].widget.attrs['onchange'] = 'Get_Step8(this.value)'

class ApplicantInformationForm(forms.ModelForm):

    class Meta:
        model = ApplicantInformation
        fields = "__all__"
        exclude=('customer','created_at','updated_at',)
        widgets = {"foo":CheckboxSelectMultiple(),}
        
    explanation = CustomSelectMultiple(widget=forms.CheckboxSelectMultiple,queryset=ApplicableBoxes.objects.all(),label="Please check any applicable boxes and provide an explanation")

    def __init__(self, *args, **kwargs):
        super(ApplicantInformationForm, self).__init__(*args, **kwargs)
        self.fields['intepreter_appartment'].label = 'Is there an apartment,sulte or floor'
        self.fields['intepreter_appartment'].widget.attrs['onchange'] = 'Take_name(this.value);'
        self.fields['preparer_appartment'].widget.attrs['onchange'] = 'Take_name(this.value);'
        self.fields['other_social_security_number'].help_text = 'Other Information'
        self.fields['interpreter_prepare_information_status'].help_text = 'Interpreter'
        self.fields['interpreter_language'].help_text = 'Interpreter Information'
        self.fields['intepreter_streat_number_and_name'].help_text = "Interpreter's Malling Address"
        self.fields['preparer_status'].help_text = "Preparer"
        self.fields['preparer_first_name'].help_text = "Preparer Information"
        self.fields['intepreter_daytime_phone_number'].help_text = "Interpreter's Contact Information"
        self.fields['preparer_daytime_phone_number'].help_text = "Preparer's Contact Information "
        self.fields['preparer_streat_number_and_name'].help_text = "Preparer's Malling Address"
        self.fields['accomidation_status'].help_text = "Accommodations for Individuals with Disabilities and Impairments"
        self.fields['accomidation_status'].widget.attrs['onchange'] = 'Get_AccomData(this.value)'
        self.fields['preparer_appartment'].label = 'Is there an apartment,sulte or floor'
        self.fields['preparer_appartment_value'].label = 'Enter appartment or floor no'
        self.fields['interpreter_prepare_information_status'].widget.attrs['onchange'] = 'Interpreter(this.value)'
        self.fields['preparer_status'].widget.attrs['onchange'] = 'Preferrer(this.value)'
        self.fields['accomidation_status'].widget.attrs['onchange'] = 'AccOmStatus(this.value)'
        self.fields['explanation'].help_text = 'Please check any applicable boxes and provide an explanation'
        self.fields['explanation'].widget.attrs['required'] = 'required'