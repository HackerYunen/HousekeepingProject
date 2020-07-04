from django.db import models

# Create your models here.
class User(models.Model):
    username = models.CharField(max_length=30, unique=True) # 用户名，长度限制30，唯一
    password = models.CharField(max_length=256) # 密码，md5(salt+明文密码)
    salt = models.CharField(max_length=128, default='', blank=True) # salt盐值
    real_name = models.CharField(max_length=20, default='') # 真实姓名
    sex = models.BooleanField(default=True) # 性别，男真女假，默认为难
    phone = models.IntegerField(default=0) # 手机号，注册时先不填占位置
    create_at = models.DateTimeField(auto_now_add=True) # 创建时间，自动初始化
    modified_at = models.DateTimeField(auto_now_add=True) # 修改时间，自动初始化