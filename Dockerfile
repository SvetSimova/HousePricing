FROM python:3.7
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
#CMD ["python", "app.py", "runserver", "0.0.0.0:5000"]
#EXPOSE $PORT
#CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app