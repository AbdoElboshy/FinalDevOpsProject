# Use an official Python runtime as a base image
FROM python:3.9-slim


# Copy the current directory contents into the container
COPY . /FlaskApp
COPY . /db

# Install system dependencies
RUN apt-get update && \
    apt-get install -y default-libmysqlclient-dev gcc && \
    rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install flask
RUN pip install mysql-connector
RUN pip install flask-mysql
RUN pip install cryptography
RUN pip install Flask==2.3.3


# Expose the port Flask will run on
EXPOSE 5002

# Set environment variables to disable Flask's debug mode
ENV FLASK_ENV=production

# Define the command to run the Flask app
CMD [ "python", "/FlaskApp/FlaskApp/app.py" ]
