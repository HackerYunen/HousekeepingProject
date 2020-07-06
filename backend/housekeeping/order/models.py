from django.db import models
from user.models import User
from service.models import Service

# Create your models here.
class Order(models.Model):
    customer = models.ForeignKey(User, on_delete=models.CASCADE) # 顾客
    service = models.ForeignKey(Service, on_delete=models.CASCADE) # 购买的服务
    startTime = models.DateTimeField() # 预约开始时间
    endTime = models.DateTimeField() # 预约结束时间
    orderStatus = models.IntegerField(default=0) # 订单状态,0为等待用户支付，1为等待公司接单，2为已接单等待服务，3为服务结束
    userDelete = models.BooleanField(default=False) # 用户是否删除订单，True为删除（此处为伪删除）
    createAt = models.DateTimeField(auto_now_add=True)
    modifiedAt = models.DateTimeField(auto_now_add=True)
