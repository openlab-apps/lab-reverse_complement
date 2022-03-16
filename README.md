# A tutorial openlab application to generate a reverse complement sequence
This is a tutorial repository that takes you from a simple script all the way to a point where your scientific application can run in an openlab production environment at scale. We believe that everyone should be able to use *and* contribute to openlab. This repository is taking you through different stages of appication maturity and can serve as a starting point to identify areas of improvement for application development. 

## stages of application maturity
At LabDAO we think about the maturity of a code repository in five (+1) stages of maturity: 

0. the script stage 
1. *the command line stage* (you are here)
2. the container stage 
3. the compose stage
4. the workflow stage
5. the core application stage 

Right now you are at a *branch* of the repository that is representing the *command line stage*. You can switch between stages using the dropdown menu on the top left on [GitHub](https://github.com/labdao/lab-reverse_complement) or by calling *git switch* on your command line.

## the command line stage
Your repository consists of the basic script, main.py, but can now consume input from the command line
* main.py - this is the script in which your application lives in; right now it is a biopython function that takes an input that is defined in the script
* a .gitignore file and other git related files - this file helps keep your [git](https://lab.github.com/githubtraining/introduction-to-github) repository clean

## using your application
to run your application at this stage, you open your command line and run: 

python main.py TTAAATATAA

## what is wrong with the command line stage?
The command line stage can help you call the application you have build on your local hardware, but you will likely run into problems when you want to share your application with a collegue or your future self: 
* the application's dependencies are not well defined. Running the script on a different machine will likely not work, as biopython is not installed

## how to move to the container stage?
We recommend using docker to containerize your application. While other tools to control dependencies exist (e.g. conda), they still require manual tweaking when moving between operating systems (e.g. from Mac to Linux) and are not as deeply integrated with orchestration/workflow tools such as Kubernetes and Nextflow that are commonly used in production. The basic piece we add to the repository is a Dockerfile and a github action that automatically produces a docker container. Move to the 2-container-stage branch to see this in action.
