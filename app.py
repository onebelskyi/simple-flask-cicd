from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # Отримуємо ім'я хоста (контейнера), щоб бачити зміни при оновленні
    hostname = os.uname()[1] 
    return f"<h1>Hello from CI/CD Pipeline!</h1><p>Served by container: {hostname}</p>"

if __name__ == "__main__":
    # Запускаємо сервер на порту 5000, доступний ззовні контейнера
    app.run(host='0.0.0.0', port=5000)