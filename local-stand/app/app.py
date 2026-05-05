import os
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def index():
    return jsonify({
        "message": "Backend is running",
        "service": "python-flask",
        "port": os.getenv("APP_PORT", "8080")
    })

@app.route("/health")
def health():
    return jsonify({"status": "ok"}), 200

if __name__ == "__main__":
    port = int(os.getenv("APP_PORT", "8080"))
    app.run(host="0.0.0.0", port=port)