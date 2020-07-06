from django.shortcuts import render

# Create your views here.
def myScore(request):
    """
    查看我写的全部评价信息
    请求方式：GET
    """
    pass

def serviceScore(request, serviceId):
    """
    查看服务的评价
    请求方式：GET
    """
    pass

def newScore(request, serviceId):
    """
    创建评价
    请求方式：GET、POST混合
    请求参数：serviceId、timeScore、serviceScore、description、images
    """
    pass