from django.http import JsonResponse

def js_ok(data):
    return JsonResponse({'status': 200, 'data': data})

def js_error(status, error_msg):
    return JsonResponse({'status': status, 'error_msg': error_msg})