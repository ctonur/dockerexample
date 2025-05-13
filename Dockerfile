# Base image olarak Python 3.9 kullanıyoruz
FROM python:3.9-slim

# User oluşturuyoruz
RUN useradd -u 1001 dockeruser

# Çalışma dizinini ayarlıyoruz
WORKDIR /app

# Uygulama dosyalarını kopyalıyoruz
COPY app.py /app/app.py
COPY index.html /app/index.html

# Flask'ı kuruyoruz
RUN pip install flask

# Kullanıcı değişimi
USER dockeruser

# Ortam değişkeni
ENV MESSAGE="Hello from Docker ENV"

# Uygulamayı başlatıyoruz
CMD ["python", "app.py"]
