from flask import Blueprint, jsonify

main = Blueprint('main', __name__)

@main.route('/')
def home():
    return jsonify({"message": "Docker is running this Flask app successfully!"})

@main.route('/health')
def health_check():
    return jsonify({"status": "healthy"})

