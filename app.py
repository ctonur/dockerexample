# app.py
from flask import Flask, render_template_string
import os

app = Flask(__name__)

# Çevresel değişkeni oku, default olarak 'No message set' yazsın
message = os.getenv('MESSAGE', 'No message set')

template = """
<!DOCTYPE html>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
    <h1>Hello, World!</h1>
    <p>Environment Variable: {{message}}</p>
</body>
</html>
"""

@app.route('/')
def index():
    return render_template_string(template, message=message)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
