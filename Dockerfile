# choose a base image, we use a lightweight docker container running python3 on ubuntu
FROM fnndsc/ubuntu-python3:ubuntu20.04-python3.8.10 
# install the dependencies
RUN pip install biopython 
