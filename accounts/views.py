from django.shortcuts import render , redirect
from django.contrib import messages
from django.contrib.auth.models import User , auth 

# Create your views here.
def login(request) :
    if request.method == 'POST' :
        username1 = request.POST['username1']
        pass3 = request.POST['pass3']

        user1 = auth.authenticate(username = username1 , password = pass3)
    
        if user1 is not None :
            auth.login(request,user1)
            return redirect('/index')
        else :
            messages.info(request,'Invalid user')
            return redirect('register')
    else :
        return render(request,'register.html')


def register(request) :
    if request.method == 'POST' :
        username2 = request.POST['username2']
        pass1 = request.POST['pass1']
        pass2 = request.POST['pass2']
        email = request.POST['email']

        if pass1 == pass2 :
            if User.objects.filter(email = email).exists() :
                messages.info(request,'Email is already registered.')
                print('Email is already registered.')
                return redirect('register')
            else :
                user = User.objects.create_user(username = username2 , password = pass1 , email = email)
                user.save()
                messages.info(request,'user created')
                print('user created')
                return redirect('register')
        else :
            messages.info(request,'Password is not matching..')
            print('Password is not matching..')
            return redirect('register')
        return redirect('/index')

    else :
        return render(request,'register.html')

def logout(request) :
    auth.logout(request)
    return redirect('/index')