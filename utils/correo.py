from flask_mail import Mail, Message

mail=Mail()



#    def enviarCorreo(nombre,fecha,rutaQR,rutaFoto):
 #      msg = Message('Registro de usuario', sender = 'diasconciencia@gmail.com', recipients = ['mvladex@gmail.com'])
  #     msg.body = "Bievenido a BoxFit"+"\n"+nombre+"\n"+"Tu fecha de ingreso: "+fecha
     #  archivo = 'static/codigosqr/'+str(rutaQR)+'.png'
       #with mail.open_resource(archivo) as fp:
        #msg.attach(archivo, "text/plain", fp.read())
    #   mail.send(msg)
   #    return "Sent"
