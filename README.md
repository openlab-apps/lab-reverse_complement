# A tutorial openlab application to generate a reverse complement sequence
This is a tutorial repository that takes you from a simple script all the way to a point where your scientific application can run in an openlab production environment at scale. We believe that everyone should be able to use *and* contribute to openlab. This repository is taking you through different stages of appication maturity and can serve as a starting point to identify areas of improvement for application development. 

## stages of application maturity
At LabDAO we think about the maturity of a code repository in five (+1) stages of maturity: 

0. the script stage 
1. the command line stage
2. the container stage
3. *the compose stage* (you are here)
4. the workflow stage
5. the core application stage 

Right now you are at a *branch* of the repository that is representing the *command line stage*. You can switch between stages using the dropdown menu on the top left on [GitHub](https://github.com/labdao/lab-reverse_complement) or by calling *git switch* on your command line.

## the container stage
Your repository consists of the following files: 
* main.py - this is the script in which your application lives in; right now it is a biopython function that takes an input from the command line
* a .gitignore file and other git related files - this file helps keep your [git](https://lab.github.com/githubtraining/introduction-to-github) repository clean
* Dockerfile - a file containing the commands required to install dependencies for the application. You can think of docker as a lightweight virtual machine.
* docker-compose.yml

## using your application
You can build the container by calling *docker build*:

```
# build the container and name it; notice that the username will be different
docker build ../lab-reverse_complement -t niklastr/lab-reverse_complement:container
```
Instead of using *docker run* we have defined our docker-compose.yml file and run it using :
```
# launch the container in interactive mode
docker run -it -d niklastr/lab-reverse_complement:container
# within the container (notice the change of your shell) you can call your application
python3 /usr/src/app/main.py TATAAATA
```

## what is wrong with the container stage?
The container stage can help you share your application with a collegue or your future self. However, you will quickly recognize that containers themselves are not sufficient if you want to tell users *how* to run the container. This is especially relevant when you plan to run applications in using multiple containers.

## how to move to the compose stage?
We now add a docker-compose.yml to our repository. A docker-compose file defines a lot of the parameters that you would usually pass to the command line when you run *docker run*, such as the port the container should listen to and the volumes it should mount to interact with input and output data.

## where can I learn more? 
* [docker compose documentation](https://docs.docker.com/compose/)
* [docker compose in 12 minutes](https://www.youtube.com/watch?v=Qw9zlE3t8Ko)

