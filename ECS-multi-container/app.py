import psycopg2
from flask import Flask

app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(
        host="db",
        database="mydb",
        user="myuser",
        password="mypassword"
    )
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    conn.close()
    return 'Connected to the database!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
