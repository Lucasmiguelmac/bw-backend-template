from django.conf import settings
from django.contrib import admin
from django.urls import path

if settings.DEBUG:
    urlpatterns = [
        path('admin/', admin.site.urls),
    ]
else:
    urlpatterns = [
        # Safe urls grabbed from .env
    ]