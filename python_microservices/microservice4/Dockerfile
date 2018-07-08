FROM python:2
ADD  run_playbook.py /
RUN pip install ansible
ENTRYPOINT [ "python", "/run_playbook.py"]
CMD ["--help"]              
