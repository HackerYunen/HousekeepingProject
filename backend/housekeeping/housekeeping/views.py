from django.http.response import JsonResponse

def index(request):
    return JsonResponse({'code': 200, 'data': []})