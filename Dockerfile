FROM fnndsc/ubuntu-python3:ubuntu20.04-python3.8.10 # choose a base image, we use a lightweight docker container running python3 on ubuntu
RUN pip install biopython # install the dependencies
