FROM resin/raspberry-pi-python:3.6-slim
RUN pip3 install flask
WORKDIR /app
ENTRYPOINT ["python3"]
CMD ["app.py"]
