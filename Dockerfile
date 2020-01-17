FROM python:3.6-slim

RUN apt-get update -y \
  && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    build-essential \
    default-libmysqlclient-dev \
    libssl-dev \
    libffi-dev \
    python-dev \
    libsasl2-dev \
    libldap2-dev \
    --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

