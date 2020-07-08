from housekeeping.globalFunc import js_ok, js_error
from django.views.decorators.http import require_http_methods
import random, string, hashlib
from user.models import User


@require_http_methods(['GET'])
def my(request):

    username = request.session.get('username')
    user = User.objects.get(username = username)

    context = {
        'lastName': user.real_name[0:1],
        'sex': '女士' if user.sex else '先生',
        'collectionsNum': 0,
        'recentOrderNum': 0,
        'AvgScore': 0,
        'AvgSpend': 0
    }

    return js_ok(context)

@require_http_methods(['POST'])
def login(request):
    """
    请求方式：POST
    传递参数：username&password
    返回类型：字符串：ok|error
    """
    # 判断是否是post请求
    # 获取用户信息
    username = request.POST.get('username', None)
    password = request.POST.get('password', None)

    if username == None or password == None:
        return js_error(502, '参数不全')

    # 查询对应用户信息
    user = User.objects.get(username=username)
    # 判断密码正确性
    if hashlib.md5((password + user.salt).encode('utf-8')).hexdigest() == user.password:
        # 存入session
        request.session['username'] = username
        return js_ok('登录成功')
    else:
        # 账号密码错误
        return js_error(401, '密码错误')


@require_http_methods(['GET','POST'])
def logout(request):
    request.session.flush()
    return js_ok('退出成功')


@require_http_methods(['POST'])
def register(request):
    """
    请求方式：POST
    传递值：username&password
    """
    # 获取参数
    username = request.POST.get('username', None)
    password = request.POST.get('password', None)

    if username == None or password == None:
        return js_error(502, '缺少参数')

    # 判断用户是否存在
    if User.objects.filter(username=username).count() != 0:
        return js_error(502, '用户名已存在')

    # 添加数据
    salt = ''.join(random.sample(string.ascii_letters + string.digits, 6))
    md5_password = hashlib.md5((password + salt).encode('utf-8')).hexdigest()
    User.objects.create(username = username, password = md5_password, salt = salt)

    return js_ok('注册成功')


@require_http_methods(['POST'])
def completeUserInfo(request):
    # 获取修改填入的数据
    sex = request.POST.get('sex', None)
    real_name = request.POST.get('real_name', None)
    phone = request.POST.get('phone', 0)
    account = request.session['username']

    if sex == "" and real_name == "" and phone == "":  # 如果三项都没有进行修改
        return js_error(502, '请至少修改一项')
    else:  # 如果进行操作，一次判断哪一个发生了改变，再依次update
        if (real_name != ""):  # 昵称如果不为空，更新昵称
            User.objects.filter(username=account).update(real_name=real_name)

        if (sex != ""):  # 性别不为空，更新性别
            User.objects.filter(username=account).update(sex=sex)

        if (len(phone) != 11):
            return js_error(502, '电话号码输入不正确')
        else:
            User.objects.filter(username=account).update(phone=phone)

        return js_ok('修改成功')


@require_http_methods(['POST'])
def changePassword(request):

    username = request.session['username']
    password = request.POST.get('password') # 现密码
    newPassword = request.POST.get('newPassword') # 新密码
    user = User.objects.get(username=username)

    if user.password == hashlib.md5((password + user.salt).encode('utf-8')).hexdigest():
        user.password = hashlib.md5((newPassword + user.salt).encode('utf-8')).hexdigest()
        user.save()
    else:
        js_error(401, '原密码不对')


@require_http_methods(['POST'])
def forgetPassword(request):
    """
    忘记密码
    请求方式：POST
    传递：phone
    此方法先不做处理，仅仅演示即可
    """
    return js_ok('已发送找回密码短信，请注意查收')


@require_http_methods(['GET'])
def showUserInfo(request, userId):
    """
    家政公司查看用户信息
    请求方式：GET
    返回手机、性别、姓氏等信息
    """
    customer = User.objects.get(id=userId)

    data = {
        'username': customer.username,
        'sex': customer.sex,
        'phone': customer.phone,
        'real_name': customer.real_name
    }

    return js_ok(data)
