FROM python:3.7
RUN pip install -U zmq
COPY server.py /
COPY healthcheck.py /

HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD python healthcheck.py || exit 1

CMD [ "python", "/server.py" ]