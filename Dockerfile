FROM python:3.11

WORKDIR /usr/src/app

COPY setup.py /usr/src/app/
COPY README.md /usr/src/app/

# COPY requirements.txt usr/src/app/requirements.txt
# RUN pip install --no-cache-dir -r usr/src/app/requirements.txt

RUN pip install -e .
COPY prometheus_os_exporter/*.py /usr/src/app/prometheus_os_exporter/

EXPOSE 9206

ENTRYPOINT ["python", "-u", "/usr/local/bin/prometheus_os_exporter"]