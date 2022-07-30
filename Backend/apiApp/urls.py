from django.urls import path
from apiApp.views import itemRoute,searchRoute,mlRoute

urlpatterns = [
    path('item/<str:uuid>',itemRoute),
    path('search/<str:query>',searchRoute),
    path('ml',mlRoute)
]