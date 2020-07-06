from django.db import models
from company.models import Company

# Create your models here.
class User(models.Model):
    username = models.CharField(max_length=16, unique=True) # 用户名
    password = models.CharField(max_length=256) # 密码
    salt = models.CharField(max_length=6) # 盐值
    real_name = models.CharField(max_length=12) # 真实姓名
    sex = models.BooleanField(default=False) # 性别，男假女真
    phone = models.IntegerField(default=0) # 手机号
    company = models.ForeignKey(Company, on_delete=models.CASCADE, blank=True) # 管理的公司，可空
    createAt = models.DateTimeField(auto_now_add=True)
    modifiedAt = models.DateTimeField(auto_now_add=True)