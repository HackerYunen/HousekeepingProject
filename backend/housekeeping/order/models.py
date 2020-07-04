from django.db import models
from hkman.models import HKMan
from user.models import User


# Create your models here.
class Order(models.Model):
    customer = models.ForeignKey(User, on_delete=models.CASCADE) # 顾客
    serviceman = models.ForeignKey(HKMan, on_delete=models.CASCADE) # 服务人员
    startTime = models.DateTimeField() # 订单预约开始时间
    hours = models.FloatField() # 小时数
    pay_status = models.BooleanField(default=False) # 订单支付情况，已支付为真
    score = models.FloatField() # 评分
    create_at = models.DateTimeField(auto_now_add=True) # 创建时间，自动初始化
    modified_at = models.DateTimeField(auto_now_add=True) # 修改时间，自动初始化
