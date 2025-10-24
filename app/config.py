import os

class Config:
    DEBUG = os.environ.get("DEBUG", False)
    SECRET_KEY = os.environ.get("SECRET_KEY", "docker-flask-secret")


