from django.shortcuts import render

# Create your views here.
def indexHotRecommend(request, city):
    """
    请求方式：GET
    此处需要推荐算法
    返回十个推荐的家政服务（分类不限、需要算法）[图片、公司名称、近30天销量、评分、服务描述100词]
    """
    pass

def searchService(request, title, city):
    """
    服务搜索
    请求方式：GET
    返回20个相应的家政服务（需要算法）[图片、公司名称、近30天销量、评分、服务描述100词]
    """
    pass

def searchServiceFilter(request, title, city, filter):
    """
    服务搜索2——筛选
    请求方式：GET
    其中，filter的格式特殊，如：subCategory-xxx-category-xxx-scoreMin-4.0-scoreMax-5.0
    根据筛选条件，返回20个相应的家政服务（需要算法）[图片、公司名称、近30天销量、评分、服务描述100词]
    """
    pass

def newService(request):
    """
    新建服务
    请求方式：POST
    参数：images、title、description、sex、city、hourlyWage、workTimeStart、workTimeEnd、subCategory
    """
    pass


def unService(request, serviceId):
    """
    下架服务
    请求方式：GET
    """
    pass