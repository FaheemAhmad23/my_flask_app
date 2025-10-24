FROM python:3.11-slim

WORKDIR /app

# Install dependencies (improves caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

EXPOSE 5000

# Use Gunicorn (recommended), or you can keep python wsgi.py for testing
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]
# Alternative 
# CMD ["python", "wsgi.py"]

