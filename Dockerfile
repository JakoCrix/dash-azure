FROM python:3.8-slim-buster

# Create a working directory.
RUN mkdir /app
WORKDIR /app
ADD . /app/

# Install Python dependencies.
RUN pip install -r requirements.txt

# Bind Dash to 0.0.0.0 instead of localhost so it is connectable outside its container
ENV HOST=0.0.0.0
EXPOSE 3000

CMD ["python","app.py"]