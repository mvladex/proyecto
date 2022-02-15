from flask import Blueprint,render_template,request,redirect,url_for,flash
from flask_wtf import FlaskForm
from wtforms import StringField,PasswordField,BooleanField,validators
from wtforms.validators import InputRequired,Email,Length
from modelos.administrador import Administrador


login=Blueprint('login',__name__)



class LoginForm(FlaskForm):
    username=StringField('Nombre de Usuario',validators=[validators.DataRequired("Introduzca su usuario"),
                                                         InputRequired(),Length(min=4,max=15)],render_kw={"placeholder":"Escriba su usuario"})
    password=PasswordField('Contraseña',validators=[InputRequired(),Length(min=4,max=80)],render_kw={"placeholder":"Escriba su contraseña"})


@login.route('/login',methods=['GET','POST'])
def get_login():
    form=LoginForm()
    if form.validate_on_submit():
        usuario=Administrador.query.filter_by(usuario=form.username.data,password=form.password.data).first()
        if usuario:
            return '<h1>' + form.username.data + '' + form.password.data
        else:
            return render_template('login.html',form=form,mensaje='Usuario y/o contraseña incorrectos')


    return render_template('login.html',form=form)