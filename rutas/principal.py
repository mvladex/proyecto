import pdfkit
from flask import Blueprint,render_template,request,redirect,url_for,flash,jsonify,make_response,send_file
from utils.service import service
from utils.db import db
from utils.EnviarMensaje import EnviarMensaje
import datetime,random,webbrowser
from modelos.usuario import Usuario
from modelos.precio import Precio
from modelos.cuenta import Cuenta
from modelos.taller import Taller
from modelos.suscripcion import Suscripcion
from sqlalchemy import func

from flask_mail import Mail,Message
from utils.correo import mail
from utils.generar_usuario import GenerarUsuario

import qrcode

#inician las vistas

principal=Blueprint('principal',__name__)

@principal.route('/principal',methods=['GET'])
def get_dashboard():
    return render_template('principal.html')

@principal.route('/registro',methods=['GET','POST'])
def get_registro():
    return render_template('registro_usuarios.html')

@principal.route('/perfil/<id>',methods=['GET'])
def get_perfil(id):
    usuario_busqueda=Usuario.query.filter_by(id=id).first()
    precios=Precio.query.all()
    taller = Taller.query.all()
    return render_template('nuevo.html',id=id,usuario_busqueda=usuario_busqueda,precios=precios,taller=taller)

@principal.route('/credencial',methods=['POST','GET'])
def get_credencial():
    if request.method=='POST':

        inscripcion=request.form["inscripcion"]
        id_usuario=request.form["idusuario"]
        usuario_busqueda = Usuario.query.filter_by(id=id_usuario).first()

        usuario_sistema=GenerarUsuario.generar_nombre(usuario_busqueda.nombre,usuario_busqueda.apellido_paterno,usuario_busqueda.apellido_materno)
        password_sistema=GenerarUsuario.generar_password(usuario_busqueda.nombre,usuario_busqueda.apellido_paterno,usuario_busqueda.apellido_materno)




        taller=request.form["taller"]
        horario=request.form["horario"]
        precio_taller_seleccion = Taller.query.filter_by(id=taller).first()
        crear_cuenta=Cuenta(usuario_sistema,
                            password_sistema,
                            datetime.datetime.utcnow(),
                            datetime.datetime.utcnow(),
                            id_usuario
        )
        db.session.add(crear_cuenta)
        db.session.commit()

        #encontrar idcuenta
        id_max_cuenta = db.session.query(func.max(Cuenta.id)).scalar()

        crear_suscripcion=Suscripcion(
                    precio_taller_seleccion.costo,
                    inscripcion,
                    datetime.datetime.utcnow(),
                    datetime.datetime.utcnow(),
                    datetime.datetime.utcnow(),
                    id_max_cuenta,
                    taller,
                    horario

        )


        db.session.add(crear_suscripcion)
        db.session.commit()


        crearI(usuario_sistema)
        sms=EnviarMensaje()
        sms.envio_whatsapp("Se ha registrado a la persona: "+usuario_busqueda.nombre+" "+usuario_busqueda.apellido_paterno+" "+usuario_busqueda.apellido_materno ,"9191535673")
        return render_template("credencial.html",usuario_busqueda=usuario_busqueda,usuario_sistema=usuario_sistema)
        #cuenta_nueva=Cuenta(GenerarUsuario.generar_nombre())
    else:
        return render_template("credencial.html")

@principal.route("/correo/<mensaje>")
def index(mensaje):
    msg = Message('Registro de usuario', sender = 'diasconciencia@gmail.com', recipients = ['mvladex@gmail.com'])
    msg.html= "<p>Bievenido a BoxFit"+"\n"+mensaje+"\n"+"Tu fecha de ingreso es: "+"Consulta tu credencial dando click aquí: </p>"+"<a href='http://127.0.0.1:5000/correo/coco'>Descargar</a>"
    mail.send(msg)
    return "adios"

@principal.route("/pdf/<idbusqueda>")
def getpdf(idbusqueda):
    consulta=db.session.query(Usuario,Cuenta,Suscripcion,Taller).filter(Usuario.id==Cuenta.usuario_id).filter(Cuenta.id==Suscripcion.cuenta_id).filter(Suscripcion.taller_id==Taller.id).filter(Usuario.id==idbusqueda).all()

    for usuario,cuenta,suscripcion,taller in consulta:
        print(usuario.nombre,cuenta.usuario,suscripcion.colegiatura,taller.nombre)
    datos=[usuario.ruta,
           usuario.nombre,
           usuario.apellido_paterno,
           usuario.apellido_materno,
           usuario.direccion,
           usuario.telefono,
           usuario.correo,
           cuenta.usuario,
           taller.nombre,
           suscripcion.fecha_inicio]

    #enviar por correo la información

    enviarCorreo(idbusqueda,usuario.nombre+" "+usuario.apellido_paterno+" "+usuario.apellido_materno,suscripcion.fecha_inicio)
    rendered=render_template("generar_credencial.html",datos=datos)
    pdf=pdfkit.from_string(rendered,False)
    response=make_response(pdf)
    response.headers['Content-Type']='application/pdf'
    response.headers['Content-Disposition']='inline; filename='+usuario.nombre+'.pdf'
    return response




@principal.route('/capture_img', methods=['POST'])
def capture_img():
    if request.method=='POST':
        fecha_actual=datetime.datetime.utcnow()
        ruta_imagen=request.form['telefono']+str(random.randint(1,9999))
        usuario_nuevo=Usuario(request.form['nombre'],
                              request.form['apellido_paterno'],
                              request.form['apellido_materno'],
                              request.form['direccion'],
                              request.form['telefono'],
                              request.form['correo'],
                              ruta_imagen,
                              fecha_actual,
                              fecha_actual
                              )
        db.session.add(usuario_nuevo)
        db.session.commit()
        id_max=db.session.query(func.max(Usuario.id)).scalar()
        alta = service()
        alta.save_img(request.form["img"], ruta_imagen)
        return url_for('principal.get_perfil',id=id_max,usuario_nuevo=usuario_nuevo)


def crearI(leyenda):
    img = qrcode.make(str(leyenda))
    type(img)
    img.save("static/codigosqr/" + str(leyenda) + ".png")

def enviarCorreo(idpersona,nombre,fecha_ingreso):
    msg = Message('Registro de usuario', sender='diasconciencia@gmail.com', recipients=['mvladex@gmail.com'])
    msg.html = "<p>Bievenido a LcBoxFit" +str(nombre) +"</p> <p>Tu fecha de ingreso es: " +str(fecha_ingreso)+ "</p> <p>Consulta tu credencial dando click aquí: </p>" + "<a href='http://127.0.0.1:5000/correo/coco'>Descargar</a>"
    mail.send(msg)

#return "Sent"