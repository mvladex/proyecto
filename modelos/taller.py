from utils.db import db

class Taller(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(100))
    costo = db.Column(db.DECIMAL)

    def __init__(self,nombre,costo):
        self.nombre=nombre
        self.costo=costo
