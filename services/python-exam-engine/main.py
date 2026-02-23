import os
from flask import Flask, jsonify
from flask_cors import CORS
from dotenv import load_dotenv

# Load environment variables
load_dotenv()


def create_app():
    """Application factory pattern."""
    app = Flask(__name__)

    # Configuration
    app.config["ENV"] = os.getenv("FLASK_ENV", "production")
    app.config["DEBUG"] = os.getenv("FLASK_DEBUG", "False") == "True"

    # Enable CORS
    CORS(app, resources={r"/*": {"origins": "*"}})

    # Register blueprints
    from app.routes import upload, grading, parsing

    app.register_blueprint(upload.bp, url_prefix="/api/upload")
    app.register_blueprint(grading.bp, url_prefix="/api/grading")
    app.register_blueprint(parsing.bp, url_prefix="/api/parsing")

    # Health check route
    @app.route("/health", methods=["GET"])
    def health_check():
        return jsonify({
            "status": "healthy",
            "service": "python-exam-engine"
        }), 200

    return app


app = create_app()


if __name__ == "__main__":
    port = int(os.getenv("PORT", 10000))
    debug_mode = os.getenv("FLASK_DEBUG", "False") == "True"
    app.run(host="0.0.0.0", port=port, debug=debug_mode)