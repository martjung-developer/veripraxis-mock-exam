import os
from flask import Flask
from flask_cors import CORS
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Initialize Flask app
app = Flask(__name__)
CORS(app)

# Import routes
from app.routes import upload, grading, parsing

# Register blueprints
app.register_blueprint(upload.bp)
app.register_blueprint(grading.bp)
app.register_blueprint(parsing.bp)

@app.route("/health")
def health_check():
    return {"status": "healthy", "service": "python-exam-engine"}, 200

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 10000))
    app.run(host="0.0.0.0", port=port, debug=True)
