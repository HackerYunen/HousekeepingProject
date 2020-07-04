from django.db import models
from hkman.models import HKMan

# Create your models here.
class Wage(models.Model):
    hkman = models.ForeignKey(HKMan, on_delete=models.CASCADE) # 对应的家政人员
    money = models.FloatField(default=0) # 待提现金额
    create_at = models.DateTimeField(auto_now_add=True) # 创建时间，自动初始化
    modified_at = models.DateTimeField(auto_now_add=True) # 修改时间，自动初始化


class WithDraw(models.Model):
    hkman = models.ForeignKey(HKMan, on_delete=models.CASCADE)  # 对应的家政人员
    money = models.FloatField(default=0) # 提现金额
    method = models.CharField(max_length=256) # 提现方式，json格式存储如：{payment: 'alipay', account: 'xxx@xxx.com'}
    status = models.BooleanField(default=False) # 提现状态，False为正在提现，True为提现成功
    create_at = models.DateTimeField(auto_now_add=True) # 创建时间，自动初始化
    modified_at = models.DateTimeField(auto_now_add=True) # 修改时间，自动初始化