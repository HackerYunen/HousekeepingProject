from django.db import models
from user.models import User

# Create your models here.
class HKMan(models.Model):
    account = models.ForeignKey(User, on_delete=models.CASCADE) # 家政人员对应的登录账号
    city = models.CharField(max_length=128) # 城市
    hourlySalary = models.FloatField(default=0) # 时薪
    description = models.TextField(default='') # 个人介绍，富文本
    avatar = models.CharField(max_length=256, default='upload/avatar/default.png') # 个人头像
    create_at = models.DateTimeField(auto_now_add=True) # 创建时间，自动初始化
    modified_at = models.DateTimeField(auto_now_add=True) # 修改时间，自动初始化