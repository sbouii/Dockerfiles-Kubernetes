FROM python:2
ADD scan_ports.py /

CMD python scan_ports.py && /bin/bash -c -- trap : TERM INT; sleep infinity & wait

