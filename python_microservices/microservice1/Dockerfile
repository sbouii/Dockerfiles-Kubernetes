FROM python:2
ADD collect_data_file.py /

#we use here entrypoint instead of cmd because we make this docker image to be 
#dedicated to a specific command.(process to be run on it)
#we can add arguments to this command by passing it to docker run
#when using cmd , the command can be overriden by supplying arguments to docker run.
#you can override the entrypoint command by passing --entrypoint to docker run
ENTRYPOINT [ "python", "./collect_data_file.py", "-f", "/data/testing.txt" ]
CMD ["--help"]
