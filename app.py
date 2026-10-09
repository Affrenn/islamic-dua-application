from flask import Flask, render_template
import mysql.connector
import os

app = Flask(__name__)

def get_db_connection():
    return mysql.connector.connect(
        host=os.getenv("DB_HOST", "localhost"),
        user=os.getenv("DB_USER", "root"),
        password=os.getenv("DB_PASSWORD", "devopspassword"),
        database=os.getenv("DB_NAME", "islamic_app")
    )

@app.route("/")
def home():
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)

    cursor.execute("SELECT * FROM duas")
    duas = cursor.fetchall()

    cursor.close()
    connection.close()

    return render_template("index.html", duas=duas)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
