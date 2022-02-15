from flask import Blueprint,render_template,request,redirect,url_for,flash

inicio=Blueprint('inicio',__name__)

@inicio.route('/')
def index():
    return render_template('index.html')