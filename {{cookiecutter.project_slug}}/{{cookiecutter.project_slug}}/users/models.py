from django.contrib.auth.models import User
from django.db import models


class GenericUser(models.Model):
    user = models.OneToOneField(User)

    class Meta:
        abstract = True
