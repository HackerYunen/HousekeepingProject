from django.db import models
from company.models import Company

# Create your models here.
class WithDraw(models.Model):
    company = models.ForeignKey(Company, on_delete=models.Model) # 提现的公司
    money = models.FloatField() # 提现金额
    method = models.CharField(max_length=256) # 提现方式，json格式保存，如{'method': 'alipay', 'account': 'xxx@xxx.com'}
    status = models.IntegerField(default=1) # 提现状态，0为不通过，1位待审核，2位提现通过
    createAt = models.DateTimeField(auto_now_add=True)
    modifiedAt = models.DateTimeField(auto_now_add=True)