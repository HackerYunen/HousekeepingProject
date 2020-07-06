from django.db import models

# Create your models here.
class Company(models.Model):
    name = models.CharField(max_length=128) # 公司名称
    qualification = models.IntegerField(default=1) # 资质校验，1位待审查，0位不具有资格，2位具有资格
    money = models.FloatField(default=0.00) # 待提现金额
    createAt = models.DateTimeField(auto_now_add=True)
    modifiedAt = models.DateTimeField(auto_now_add=True)