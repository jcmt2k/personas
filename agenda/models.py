from django.db import models

# Create your models here.
class Contactos(models.Model):
    nombre_text = models.CharField(max_length=60)
    apellido_text = models.CharField(max_length=60)
    nacimiento_date = models.DateTimeField('fecha de nacimiento')
    celular_text = models.CharField(max_length=15)

    def __str__(self):
        return self.nombre_text + " " + self.apellido_text
