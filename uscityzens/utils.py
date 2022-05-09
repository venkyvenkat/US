from functools import wraps
from django.shortcuts import redirect

def check_module_login(function):
  @wraps(function)
  def wrap(request, *args, **kwargs):
        if request.user.is_authenticated and request.user.is_staff == False:
            return function(request, *args, **kwargs)
        else:
            return redirect('/')
  return wrap

def check_previous_step(function):
  @wraps(function)
  def wrap(request, *args, **kwargs):
        print(request.path,'$$$',args,"===",kwargs)
        if '/step-1/' in request.path:
          pass
        elif '/step-2/' in request.path:
          pass
        elif '/step-3/' in request.path:
          if 'pk' in kwargs:
            pass
          else:
            return redirect('/step-1')
        elif '/step-4/' in request.path:
          if 'pk' in kwargs:
            pass
          else:
            return redirect('/step-1')
        elif '/step-5/' in request.path:
          if 'pk' in kwargs:
            pass
          else:
            return redirect('/step-1')
        elif '/step-6/' in request.path:
          if 'pk' in kwargs:
            pass
          else:
            return redirect('/step-1')
        elif '/step-7/' in request.path:
          if 'pk' in kwargs:
            pass
          else:
            return redirect('/step-1')
        elif '/step-8/' in request.path:
          if 'pk' in kwargs:
            pass
          else:
            return redirect('/step-1')
        else:
          if 'pk' in kwargs:
            pass
          else:
            return redirect('/step-1')
        return function(request, *args, **kwargs)
  return wrap