FROM ubuntu:24.04


RUN apt-get update && apt-get install -y --no-install-recommends git ca-certificates time python3 python3-pip python3-venv \
    && rm -rf /var/lib/apt/lists/*

COPY /requirements.txt ./requirements.txt
RUN python3 -m pip install -r requirements.txt --break-system-packages
COPY /app/main.py ./app/main.py
COPY /app/dbs.py ./app/dbs.py
COPY /openapi ./openapi
COPY gen_openapi.sh .

RUN bash gen_openapi.sh

ENTRYPOINT ["uvicorn", "--host", "0.0.0.0", "--port", "8088", "app.main:app"]