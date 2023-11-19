FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python python3-pip

# Upgrade pip to the latest version
RUN pip install --upgrade pip

RUN pip install flask

COPY app.py /opt/

WORKDIR /opt/

# Set the FLASK_APP environment variable
ENV FLASK_APP=app.py

# Expose the Flask port
EXPOSE 8080


ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=8080"]

