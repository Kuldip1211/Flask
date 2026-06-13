
# Flask Hello World Guide

## Installation

1. **Install Python** (3.7 or higher)
2. **Create a virtual environment:**
    ```bash
    python -m venv venv
    ```

3. **Activate the virtual environment:**
    - On Windows:
      ```bash
      venv\Scripts\activate
      ```
    - On macOS/Linux:
      ```bash
      source venv/bin/activate
      ```

4. **Install Flask:**
    ```bash
    pip install flask
    ```

## Create Hello World Program

1. **Create `app.py`:**
    ```python
    from flask import Flask

    app = Flask(__name__)

    @app.route('/')
    def hello():
         return 'Hello World!'

    if __name__ == '__main__':
         app.run(debug=True)
    ```

2. **Run the application:**
    ```bash
    python app.py
    ```

3. **Open your browser and visit:**
    ```
    http://127.0.0.1:5000/
    ```

