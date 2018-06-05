# Dockerfiles_kubernetes_examples
## Description

It's different dockerfiles used for running system containers or "fat containers" and application containers or microservices.
Mainly those dockerfiles use ansible for the configuration of the docker image by retrieving a prebuilt role from ansible-galaxy in order to get a service up and running in your infrastructure easily.
the different created images will be used to create kubernetes objects.

## Usage

In order to build the docker image locally, do the following steps:

1. Install [Docker](https://docs.docker.com/engine/installation/).
2. `cd` into the dockerfile directory
3. Run `docker build -t dockerfile_tag_name .`
