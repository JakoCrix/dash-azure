FROM python:3.8-slim

EXPOSE 3000

# Create a working directory.
RUN mkdir /app
WORKDIR /app
ADD . /app/

# Install Python dependencies.
ADD requirements.txt /app/
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["application.py"]