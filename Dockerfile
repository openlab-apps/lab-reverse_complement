# choose a base image, we use a lightweight docker container running python3 on ubuntu
FROM ubuntu:jammy 
# install basic packages
RUN apt-get update
RUN apt-get install -y tmux wget curl git nano
RUN apt-get install -y python3 pip
# copy the current repository to the container and store it at /usr/src/app - you can learn more about this convention here: https://en.wikipedia.org/wiki/Unix_filesystem#Conventional_directory_layout
# we first copy the requirements file only, to use the docker cache effectively
COPY ./requirements.txt /usr/src/app/requirements.txt
# install the dependencies
RUN pip install -r /usr/src/app/requirements.txt 
# we put the copying of the complete repo to the end of the container to use the docker cache effectively
COPY . /usr/src/app
WORKDIR /usr/src/app
# run the server
CMD ["uvicorn", "server.main:server", "--host", "0.0.0.0", "--port", "80"]
