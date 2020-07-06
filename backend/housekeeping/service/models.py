from django.db import models
from company.models import Company
from user.models import User

class Category(models.Model):
    name = models.CharField(max_length=128) # 主服务分类名称

class SubCategory(models.Model):
    name = models.CharField(max_length=128) # 子服务分类名称
    category = models.ForeignKey(Category, on_delete=models.CASCADE) # 对应的主服务分类

class Service(models.Model):
    image = models.CharField(max_length=128, default='/upload/images/default.png') # 服务外部展示图
    title = models.CharField(max_length=128) # 服务标题
    sex = models.IntegerField(default=2) # 服务可分配人员性别，0为只限男性，1为只限女性，2位男女不限
    unService = models.BooleanField(default=False) # 服务下架，True为下架服务
    city = models.CharField(max_length=128) # 服务城市
    hourlyWage = models.IntegerField() # 时薪
    company = models.ForeignKey(Company, on_delete=models.CASCADE) # 发布的公司
    description = models.TextField() # 服务描述详情，富文本，markdown格式
    subCategory = models.ManyToManyField(SubCategory) # 选择的子服务分类
    workTimeStart = models.DateTimeField() # 接受预约开始时间
    workTimeEnd = models.DateTimeField() # 接受预约结束时间
    createAt = models.DateTimeField(auto_now_add=True)
    modifiedAt = models.DateTimeField(auto_now_add=True)

class Collections(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE) # 对应的用户
    services = models.ManyToManyField(Service) # 收藏的服务
    createAt = models.DateTimeField(auto_now_add=True)
    modifiedAt = models.DateTimeField(auto_now_add=True)