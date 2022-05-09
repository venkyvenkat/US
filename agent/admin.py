from django.contrib import admin
from .models import Agent

admin.site.site_header = 'UsCityzens'
admin.site.site_title = 'UsCityzens'
admin.site.index_title = ''

class AgentAdmin(admin.ModelAdmin):
    list_display = [field.name for field in Agent._meta.fields if field.name not in ('id')]
    list_display.insert(0, '__str__')
admin.site.register(Agent,AgentAdmin)