from utils.db import db

class Administrador(db.Model):
    id=db.Column(db.Integer,primary_key=True)
    nombre=db.Column(db.String(100))
    apellidos=db.Column(db.String(100))
    usuario=db.Column(db.String(100))
    password=db.Column(db.String(100))
    fecha_registro=db.Column(db.String(100))
    fecha_modificacion=db.Column(db.String(100))

    def __init__(self,id,nombre,apellidos,usuario,password,fecha_registro,fecha_modificacion):
        self.id=id
        self.nombre=nombre
        self.apellidos=apellidos
        self.usuario=usuario
        self.password=password
        self.fecha_modificacion=fecha_modificacion
        self.fecha_registro=fecha_registro
