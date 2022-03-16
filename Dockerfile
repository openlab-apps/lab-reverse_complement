# choose a base image, we use a lightweight docker container running python3 on ubuntu
FROM ubuntu:jammy 
LABEL authors="Niklas Rindtorff" \
      description="Docker image containing all software requirements for the revcomp example pipeline"
# install basic packages
RUN apt-get update
RUN apt-get install -y tmux wget curl git nano
RUN apt-get install -y python3 pip
# install the dependencies
RUN pip install -r /usr/src/requirements.txt
CMD ["bash"]