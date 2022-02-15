import random
import unicodedata
import qrcode

class GenerarUsuario():



    def generar_nombre(nombre,ap,am):
        name=nombre.split(" ")
        name=name[0]
        ap1=ap[0:1]
        am2=am[0:1]
        cadena=name+ap1+am2+str(random.randint(1,99))
        print("user:",cadena)
        print("cadena:",cambiar("azucar"))
        return cambiar(cadena)

    def generar_password(nombre,ap,am):
        name=nombre.split(" ")
        name=name[0]
        ap1=ap[0:1]
        am2=am[0:1]
        cadena_pass=name+str(random.randint(1,999))
        return cambiar(cadena_pass)

def cambiar(palabra):
    s1 = palabra.replace("ñ", "#").replace("Ñ", "%")
    s2 = unicodedata.normalize("NFKD", s1) \
            .encode("ascii", "ignore").decode("ascii") \
            .replace("#", "ñ").replace("%", "Ñ")
    return s2

