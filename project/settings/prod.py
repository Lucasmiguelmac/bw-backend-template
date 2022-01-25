import os

from project.settings.base import *

SECURE_SSL_REDIRECT = True
STATIC_ROOT = os.environ.get("STATIC_ROOT")
CORS_ALLOWED_ORIGINS = [i for i in os.environ.get("CORS_ALLOWED_ORIGINs").split(",")]