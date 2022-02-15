from utils.db import db

class Suscripcion(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    colegiatura = db.Column(db.DECIMAL)
    inscripcion = db.Column(db.DECIMAL)
    fecha_inicio = db.Column(db.DATETIME)
    fecha_registro = db.Column(db.DATETIME)
    fecha_modificacion = db.Column(db.DATETIME)
    cuenta_id=db.Column(db.Integer)
    taller_id= db.Column(db.Integer)
    horario_id= db.Column(db.Integer)


    def __init__(self,colegiatura,inscripcion,fecha_inicio,fecha_registro,fecha_modificacion,cuenta_id,taller_id,horario_id):
        self.colegiatura=colegiatura
        self.inscripcion=inscripcion
        self.fecha_inicio=fecha_inicio
        self.fecha_registro=fecha_registro
        self.fecha_modificacion=fecha_modificacion
        self.cuenta_id=cuenta_id
        self.taller_id=taller_id
        self.horario_id=horario_id
