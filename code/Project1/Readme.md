# Flask Hello World Application

A beginner-friendly Flask application demonstrating core concepts for building modern web applications with Python.

## 📋 Table of Contents

- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running the Application](#running-the-application)
- [API Endpoints](#api-endpoints)
- [Development](#development)
- [Best Practices](#best-practices)
- [Troubleshooting](#troubleshooting)
- [Resources](#resources)

## Prerequisites

- **Python 3.8+** (recommended: 3.10 or higher)
- **pip** (Python package manager)
- **Virtual environment** support
- Basic knowledge of Python and HTTP concepts

## Project Structure

```
Project1/
├── app.py              # Main application file
├── requirements.txt    # Project dependencies
├── .env               # Environment variables (not in version control)
├── .gitignore         # Git ignore rules
└── Readme.md          # This file
```

## Installation

### 1. Clone or Navigate to the Project

```bash
cd code/Project1
```

### 2. Create a Virtual Environment

```bash
# On Windows
python -m venv venv

# On macOS/Linux
python3 -m venv venv
```

### 3. Activate the Virtual Environment

```bash
# On Windows
venv\Scripts\activate

# On macOS/Linux
source venv/bin/activate
```

You should see `(venv)` prefix in your terminal prompt.

### 4. Install Dependencies

```bash
pip install -r requirements.txt
```

Or install Flask directly:

```bash
pip install flask
```

## Configuration

Create a `.env` file in the project root for environment variables:

```env
FLASK_ENV=development
FLASK_DEBUG=True
FLASK_APP=app.py
```

**⚠️ Security Note:** Never commit `.env` files to version control. Add `.env` to your `.gitignore`.

## Creating the Application

### Basic Flask Application

Create `app.py`:

```python
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello():
    """Home endpoint returning a greeting message."""
    return jsonify({
        'message': 'Hello World!',
        'status': 'success'
    }), 200

@app.route('/api/hello/<name>', methods=['GET'])
def greet_user(name):
    """Greet a specific user."""
    return jsonify({
        'message': f'Hello, {name}!',
        'status': 'success'
    }), 200

if __name__ == '__main__':
    app.run(debug=True, host='127.0.0.1', port=5000)
```

### Create `requirements.txt`

```
Flask==3.0.0
python-dotenv==1.0.0
```

Install requirements:

```bash
pip install -r requirements.txt
```

## Running the Application

### Development Mode

```bash
python app.py
```

The application will start on `http://127.0.0.1:5000/`

### Production Mode

```bash
export FLASK_ENV=production  # On Windows: set FLASK_ENV=production
flask run
```

## API Endpoints

| Method | Endpoint | Description | Example |
|--------|----------|-------------|---------|
| `GET` | `/` | Returns a greeting message | `curl http://localhost:5000/` |
| `GET` | `/api/hello/<name>` | Greet a specific user | `curl http://localhost:5000/api/hello/John` |

### Example Responses

**GET /**
```json
{
  "message": "Hello World!",
  "status": "success"
}
```

**GET /api/hello/Alice**
```json
{
  "message": "Hello, Alice!",
  "status": "success"
}
```

## Development

### Enable Debug Mode

Debug mode is automatically enabled in development. To manually enable:

```python
app.run(debug=True)
```

**⚠️ Warning:** Never enable debug mode in production.

### Hot Reload

Flask automatically reloads when you modify `app.py`.

### Using Flask Shell

```bash
flask shell
>>> app
<Flask 'app'>
```

## Best Practices

✅ **Do:**
- Use virtual environments for dependency isolation
- Keep dependencies in `requirements.txt`
- Use environment variables for configuration
- Follow PEP 8 code style guidelines
- Add docstrings to functions
- Use meaningful variable names
- Handle errors gracefully
- Use JSON responses for APIs

❌ **Don't:**
- Run Flask with `debug=True` in production
- Commit `.env` files to version control
- Use hardcoded credentials
- Store secrets in the repository
- Run Flask on `0.0.0.0` in development without firewall protection

## Testing the Application

### Using cURL

```bash
# Test root endpoint
curl http://localhost:5000/

# Test with parameter
curl http://localhost:5000/api/hello/World
```

### Using Python Requests

```python
import requests

response = requests.get('http://localhost:5000/')
print(response.json())
```

## Troubleshooting

### Port Already in Use
```bash
# Change the port in app.py
app.run(debug=True, port=5001)
```

### Module Not Found Error
```bash
# Ensure virtual environment is activated
# Windows: venv\Scripts\activate
# macOS/Linux: source venv/bin/activate

# Reinstall dependencies
pip install -r requirements.txt
```

### Import Flask Error
```bash
pip install --upgrade flask
```

## Deactivating Virtual Environment

```bash
deactivate
```

## Next Steps

- Learn about [Flask Blueprints](https://flask.palletsprojects.com/en/3.0.x/blueprints/)
- Explore [Jinja2 templating](https://jinja.palletsprojects.com/)
- Integrate a database with Flask-SQLAlchemy
- Add authentication with Flask-Login
- Deploy to cloud platforms (Heroku, AWS, Google Cloud, etc.)

## Resources

- [Official Flask Documentation](https://flask.palletsprojects.com/)
- [Flask Mega-Tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world)
- [PEP 8 Style Guide](https://www.python.org/dev/peps/pep-0008/)
- [Real Python Flask Guide](https://realpython.com/flask-by-example/)

## License

This project is open source and available under the MIT License.

## Contributing

Contributions are welcome! Please follow PEP 8 guidelines and add tests for new features.

---

**Last Updated:** June 2026 | **Python Version:** 3.8+ | **Flask Version:** 3.0.0+
