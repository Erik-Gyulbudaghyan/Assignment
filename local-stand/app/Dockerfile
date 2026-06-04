FROM python:3.12-alpine
WORKDIR /app
RUN pip install --no-cache-dir \
    flask \
    psycopg2-binary \
    redis
COPY app.py .
ENV PYTHONUNBUFFERED=1
EXPOSE 8080
CMD ["python", "app.py"]