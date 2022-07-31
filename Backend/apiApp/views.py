from django.shortcuts import render
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse,HttpResponse
from django.views.decorators.csrf import csrf_exempt
from TryOn.settings import Items
import re
import urllib3
import io
from bson import json_util
from PIL import Image
from django.core.files.uploadedfile import UploadedFile
# Create your views here.
@csrf_exempt
def searchRoute(request,query):
    # search_params = JSONParser().parse(request)
    # item_result = Items.aggregate([
    #     { "$match" : { "name" : query } } 
    #     ])
    pattern = re.compile(query,re.I)
    item_result = Items.find({"name":{'$regex':query}})
    # r'\'+re.escape(query)+r'\'}})
    # item_result = Items.find()
    print(query)
    return HttpResponse(json_util.dumps(item_result))

@csrf_exempt
def mlRoute(request):
    # print(request.FILES)
    user_img = Image.open(request.FILES.get('myfile'))
    # print(files.size)
    url = 'https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/clothes%2F00848_00.jpg?alt=media'
    http = urllib3.PoolManager()
    r = http.request('GET',url)
    cloth_img = Image.open(io.BytesIO(r.data))
    cloth_img.show()
    # print(request.FILES.get('myfile'))
    # ml_result = mlmodel.predict(search_params.data.img1,search_params.data.img2)
    # return HttpResponse()
    return JsonResponse("Success!",safe=False)

@csrf_exempt
def itemRoute(request,uuid):
    search_params = JSONParser().parse(request)
    item_result = Items.find({"_id":uuid})
    return HttpResponse(item_result)

