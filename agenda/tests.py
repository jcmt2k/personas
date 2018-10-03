from django.test import TestCase
from agenda.models import Contactos
# Create your tests here.

class ContactosTestCase(TestCase):
    def setUp(self):
        Contactos.objects.create(nombre_text="Juan3", apellido_text="Perez3", nacimiento_date="1995-07-01 10:10:10", celular_text="12345678")
        #Contactos.objects.all()
        pass
    
    def test_contactos_tiene_nombre_apellido(self):
        """Un contacto debe tener nombre y apellido"""
        cont = Contactos.objects.get(nombre_text="Juan3")
        self.assertEqual(str(cont), 'Juan3 Perez3')