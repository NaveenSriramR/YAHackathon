# from django.test import TestCase
import urllib3
import io
# Create your tests here.
from PIL import Image
url = 'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/clothes%2F00848_00.jpg?alt=media'
http = urllib3.PoolManager()
r = http.request('GET',url)
img = Image.open(io.BytesIO(r.data))
img.show()
# print(r.data)