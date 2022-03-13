# lab-revcomp - a toy example for openlab applications
Wrapping your first application for openlab might seem like a daunting task if this is your first time reading about docker, kubernetes and other concepts. This repository is a minimal example for a tool that is available through openlab. This container contains a minimal application that returns the reverse complement of an input nucleotide sequence. 
Nota bene: In a production context, you would not deploy this applications using a container, but instead use serverless tools.

## basic elements of every lab-repository
* Dockerfile - a file containing the commands required to install dependencies for the application.
* main.py - a script (python, R, etc.) that is called to run the application. The script should be callable from the command line and take arguments.
* template.json - a JSON file containing an example input. This is the object that is sent to the API once it is in production. Applications that consume data should reference example datasets that are pinned to IPFS using the object URIs.

## development process for openlab applications
1. contribute to a repository by checking out a branch (git checkout). When contributing code, we do not work on the main branch. When working with job tickets within LabDAO's DeWork, we adhere to the following standard  user/dw-XX/name-of-the-job (for example: git checkout -b niklastr/dw-39/request-for-comments-on). 
2. open a pull request after making your changes to the application. A core or contributing community member will review your pull request. 
3. we use continous integration tools to ensure the quality of our services. Applications (repositories starting with "lab-"), automatically build a docker container which can be accessed from github (for example: https://github.com/labdao/lab-equibind/pkgs/container/lab-equibind). We recommend using containers with the tag "main".  
4. once application containers are available openlab nodes can pull these containers and offer the packaged applications to the community. We have at least one reference implementation of applications running on LabDAO controlled cloud compute infrastructure. While we give nodes complete freedom how they offer applications to the community, we plan to publish best practice instructions in the near future. 
5. in case applications offered by a provider give unexpected results, potential conflicts are resolved by using the reference implementation hosted by LabDAO.

