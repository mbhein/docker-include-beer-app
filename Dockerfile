# Build Docker container to run include-beer flask app

FROM resin/raspberry-pi-python:3.6-slim

LABEL maintainer="github.com/mbhein"
LABEL image_version="2.0"
LABEL description="Docker container to run include-beer flask app"

# RUN apt-get install python3-pandas

# Install requirements
ADD requirements.txt /
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# Add app script
ADD app.py /webapp
ADD templates/* /webapp/templates/*

# Set working directory
WORKDIR /webapp


# Run python3
ENTRYPOINT ["python3"]
CMD ["app.py"]
