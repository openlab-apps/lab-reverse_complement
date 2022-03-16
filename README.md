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

## the compose stage
Your repository consists of the following files: 
* main.py - this is the script in which your application lives in; we changed the code and now expose an API that listens to input on a user-defined port
* Dockerfile - a file containing the commands required to install dependencies for the application. You can think of docker as a lightweight virtual machine.
* requirements.txt - a list of dependencies (here python dependencies) that is being read when the docker container is build
* docker-compose.yml - a file describing additional parameters you would usually pass to *docker run*, including ports and where to build the container from
* .gitignore file and other git related files - this file helps keep your [git](https://lab.github.com/githubtraining/introduction-to-github) repository clean


## using your application
Next to introducing a docker-compose.yml, we added important changes to main.py. In the previous stage the script was called from the command line to generate the reverse complement. Now we have used the [FastAPI](https://fastapi.tiangolo.com/tutorial/first-steps/) package to build a simple API around our revcomp function. Moving from receiving arguments from the command line to receiving them via an API comes with many benefits: 
* APIs can come with automatic documentations about their usage 
* APIs can help run complex, composable applications, where multiple containers have to be talking to one another in a structured way

You can build the container and run it in one go by calling *docker compose up*:
```
# navigate to the directory
docker compose up
```

You can now open your browser at 0.0.0.0:80 or open your command line:
```
# connect with the server you are running
curl http://0.0.0.0/ATTAAATAAAAAA
# {"reverse_complement":"TTTTTTATTTAAT"}%      
```

Another nice thing about getting your application into this stage is the ability to quickly iterate on your code. While docker compose is running changes to the code are directly build and deployed.

## what is missing with the compose stage?
The compose stage can help you share your application with a collegue or your future self with little added information about *how* to use the container. However, the current application does not include any constraints on expected inputs and outputs. In addition, running more complex applications that generate a lot of intermediary states can become chaotic quickly. It is time for workflow descriptors.

## how to move to the workflow stage?
We use our containerized application and we embed it into a workflow. A workflow is a series of computational steps that are executed one after another in a stateful way. Workflows are especially relevant for complex applications - you would never use a workflow to only do reverse complement for a single sequence, but you might use it to calculate the reverse complement of million sequences that are directly moved to a second computational step. 

## where can I learn more? 
* [FastAPI and docker](https://fastapi.tiangolo.com/deployment/docker/#what-is-a-container)
* [docker compose in 12 minutes](https://www.youtube.com/watch?v=Qw9zlE3t8Ko)
* [official docker compose documentation](https://docs.docker.com/compose/)

