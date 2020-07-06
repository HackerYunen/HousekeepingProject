from django.db import models
from service.models import Service
from user.models import User

# Create your models here.
class Score(models.Model):
    service = models.ForeignKey(Service, on_delete=models.CASCADE) # 评分的服务
    customer = models.ForeignKey(User, on_delete=models.CASCADE) # 评分的顾客
    timeScore = models.IntegerField() # 相应时间得分
    serviceScore = models.IntegerField() # 相应服务得分
    description = models.TextField(blank=True) # 文字描述
    images = models.TextField(blank=True) # 图片附件（最多6张），list格式存储，如['图片一地址','图片二地址' ]
    createAt = models.DateTimeField(auto_now_add=True)
    modifiedAt = models.DateTimeField(auto_now_add=True)