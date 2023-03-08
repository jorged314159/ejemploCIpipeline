from django.test import TestCase


class TestHola(TestCase):
    
    def test_humo(self):
        self.assertEqual(2, 1+1)

    def test_request_url_hola(self):
        respuesta = self.client.get('/hola/')
        self.assertEqual(respuesta.status_code, 200)
