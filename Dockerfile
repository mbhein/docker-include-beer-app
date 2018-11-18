# Build Docker container to run include-beer flask app

FROM resin/raspberry-pi-python:3.6-slim
LABEL maintainer="github.com/mbhein"

# Install Flask
RUN pip3 install flask

# Set working directory
WORKDIR /app

# Run python3
ENTRYPOINT ["python3"]
CMD ["app.py"]
