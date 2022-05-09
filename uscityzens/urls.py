from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static


from django.conf import settings
admin.site.site_header = settings.ADMIN_SITE_HEADER

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('customer.urls')),
    # path('checkout/', include('checkout.urls')),
    # path('oauth/', include('social_django.urls', namespace='social')),
]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)