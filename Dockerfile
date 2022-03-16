# choose a base image, we use a lightweight docker container running python3 on ubuntu
FROM ubuntu:jammy 
# install basic packages
RUN apt-get update
RUN apt-get install -y tmux wget curl git nano
RUN apt-get install -y python3 pip
# install the dependencies
RUN pip install biopython 
# add the current repository to the container
COPY .
# open a shell when launching the container
CMD ["bash"]
