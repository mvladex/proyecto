from utils.db import db
class Precio(db.Model):
    id=db.Column(db.Integer,primary_key=True)
    descripcion=db.Column(db.String(100))
    valor=db.Column(db.String(100))
    fecha_modificacion=db.Column(db.String(100))

    def __init__(self,descripcion,valor,fecha_modificacion):
        self.descripcion=descripcion
        self.valor=valor
        self.fecha_modificacion=fecha_modificacion