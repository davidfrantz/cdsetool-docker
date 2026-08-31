FROM python:3.12-slim

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        python3-pip \
        python3.12-venv \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /venv

RUN /venv/bin/pip install --no-cache-dir git+https://github.com/CDSETool/CDSETool.git

ENV PATH="/venv/bin:$PATH"

CMD ["python3"]
