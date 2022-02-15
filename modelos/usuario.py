from utils.db import db

class Usuario(db.Model):
    id=db.Column(db.Integer,primary_key=True)
    nombre = db.Column(db.String(100))
    apellido_materno = db.Column(db.String(100))
    apellido_paterno = db.Column(db.String(100))
    direccion = db.Column(db.String(100))
    telefono = db.Column(db.String(10))
    correo = db.Column(db.String(10))
    ruta=db.Column(db.String(100))
    fecha_registro = db.Column(db.String(100))
    fecha_modificacion = db.Column(db.String(100))

    def __init__(self,nombre,apellido_paterno,apellido_materno,direccion,telefono,correo,ruta,fecha_registro,fecha_modificacion):
        self.nombre=nombre
        self.apellido_materno=apellido_materno
        self.apellido_paterno=apellido_paterno
        self.direccion=direccion
        self.telefono=telefono
        self.correo=correo
        self.ruta=ruta
        self.fecha_modificacion=fecha_modificacion
        self.fecha_registro=fecha_registro