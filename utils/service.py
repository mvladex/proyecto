import base64
import numpy as np
import cv2
class service():

    def generar_foto(self):
        # Arreglo de zeros, es la base de una imagen
        img1 = np.zeros((6, 8, 1), np.uint8)

        # colocar valores en píxeles especìficos
        img1[1, 1] = 50
        img1[4, 4] = 200
        img1[3, 5] = 75
        img1[2, 3] = 255

        # Guardo la imagen
        cv2.imwrite('Img-zeros.jpg', img1)

    def save_img(self,img_base64,numero):
        #binary <- string base64
        img_binary = base64.b64decode(img_base64)
        #jpg <- binary
        img_jpg=np.frombuffer(img_binary, dtype=np.uint8)
        #raw image <- jpg
        img = cv2.imdecode(img_jpg, cv2.IMREAD_COLOR)
        #Path to save the decoded image
        image_file="static/fotos/"+str(numero)+".jpg"
        #Save image
        cv2.imwrite(image_file, img)

