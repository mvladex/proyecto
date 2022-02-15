from twilio.rest import Client


class EnviarMensaje():
    def envio_whatsapp(self,mensaje,numero):
        account_sid = 'ACd4d2bd2baceaa76dc1d1ec474293506f'
        auth_token = 'ffaf85fc2bf255eb56a1fe41426573ec'
        client = Client(account_sid, auth_token)

        message = client.messages.create(
            from_='whatsapp:+14155238886',
            body=mensaje,
            to='whatsapp:+5219191535673'
        )

        print(message.sid)