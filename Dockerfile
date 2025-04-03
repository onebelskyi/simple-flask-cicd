# Використовуємо офіційний базовий образ Python
FROM python:3.9-slim

# Встановлюємо робочу директорію всередині контейнера
WORKDIR /app

# Копіюємо файл залежностей і встановлюємо їх
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо решту коду застосунку в робочу директорію
COPY . .

# Вказуємо порт, на якому працює застосунок
EXPOSE 5000

# Команда для запуску застосунку при старті контейнера
CMD ["python", "app.py"]
