from django.conf.urls import url
from . import views
from django.contrib.auth import views as auth_views
app_name = "customer"
from django.urls import path, include
  
urlpatterns = [
    path('',views.home,name='home'),
    path('dashboard/',views.dashboard,name='dashboard'),
    path('step-1/',views.step_1,name='step-1'),
    path('step-1/<int:pk>/',views.step_1,name='step-1'),
    path('step-2/',views.step_2,name='step-2'),
    path('step-2/<int:pk>/',views.step_2,name='step-2'),
    path('step-3/',views.step_3,name='step-3'),
    path('step-3/<int:pk>/',views.step_3,name='step-3'),
    path('step-4/',views.step_4,name='step-4'),
    path('step-4/<int:pk>/',views.step_4,name='step-4'),
    path('step-5/',views.step_5,name='step-5'),
    path('step-5/<int:pk>/',views.step_5,name='step-5'),
    path('step-6/',views.step_6,name='step-6'),
    path('step-6/<int:pk>/',views.step_6,name='step-6'),
    path('step-7/',views.step_7,name='step-7'),
    path('step-7/<int:pk>/',views.step_7,name='step-7'),
    path('step-8/',views.step_8,name='step-8'),
    path('step-8/<int:pk>/',views.step_8,name='step-8'),
    path('step-9/',views.step_9,name='step-9'),
    path('step-9/<int:pk>/',views.step_9,name='step-9'),
    path('orders/<slug:slug>/',views.orders,name='orders'),
    path('logout/',views.logout,name='logout'),
    path('view/<int:pk>/',views.view,name='view'),
]                                              
