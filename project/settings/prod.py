import os

from project.settings.base import *

SECURE_SSL_REDIRECT = True
ALLOWED_HOSTS = [el for el in os.environ.get("ALLOWED_HOSTS").split(",")]
STATIC_ROOT = os.environ.get("STATIC_ROOT")