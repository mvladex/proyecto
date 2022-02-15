from utils.db import db

class Cuenta(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    usuario=db.Column(db.String(100))
    password=db.Column(db.String(100))
    fecha_registro=db.Column(db.String(100))
    fecha_modificacion=db.Column(db.String(100))
    usuario_id=db.Column(db.Integer,db.ForeignKey('usuario.id'))

    def __init__(self,usuario,password,fecha_registro,fecha_modificacion,usuario_id):
        self.usuario=usuario
        self.password=password
        self.fecha_registro=fecha_registro
        self.fecha_modificacion=fecha_modificacion
        self.usuario_id=usuario_id

