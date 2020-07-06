from django.shortcuts import render

# Create your views here.

def myOrder(request):
    """
    请求方式：GET
    返回我的订单列表
    """
    pass

def companyOrder(request):
    """
    请求方式：GET
    返回公司所接到的订单列表
    """
    pass

def newOrder(request):
    """
    请求方式：POST
    参数：serviceId、startTime、endTime
    下单
    """
    pass

def payOrder(request, orderId):
    """
    请求方式：GET
    支付订单
    """
    pass

def applyOrder(request, orderId):
    """
    请求方式：GET
    家政公司接受订单
    """
    pass

def showOrder(request, orderId):
    """
    请求方式：GET
    查看订单详细信息（个人）
    """
    pass

def showAppliedOrder(request, orderId):
    """
    请求方式：GET
    查看订单详细信息（公司）
    """
    pass