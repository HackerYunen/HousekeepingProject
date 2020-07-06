from django.shortcuts import render
from housekeeping.globalFunc import js_ok,js_error

# Create your views here.
def login(request):
    """
    请求方式：POST
    传递参数：username&password
    返回类型：字符串：ok|error
    """
    pass

def register(request):
    """
    请求方式：POST
    传递值：username&password
    """
    pass

def completeUserInfo(request):
    """
    填写/修改用户资料
    请求方式：POST
    传递：real_name、phone、sex
    """
    pass

def changePassword(request):
    """
    修改密码
    请求方式：POST
    传递：password&newpassword
    """
    pass

def forgetPassword(request):
    """
    忘记密码
    请求方式：POST
    传递：phone
    此方法先不做处理，仅仅演示即可
    """
    return js_ok('已发送找回密码短信，请注意查收')

def showUserInfo(request, userId):
    """
    家政公司查看用户信息
    请求方式：GET
    返回手机、性别、姓氏等信息
    """
    pass