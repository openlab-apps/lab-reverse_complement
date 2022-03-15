# A tutorial openlab application to generate a reverse complement sequence
This is a tutorial repository that takes you from a simple script all the way to a point where your scientific application can run in an openlab production environment at scale. We believe that everyone should be able to use *and* contribute to openlab. This repository is taking you through different stages of appication maturity and can serve as a starting point to identify areas of improvement for application development. 

## stages of application maturity
At LabDAO we think about the maturity of a code repository in five (+1) stages of maturity: 

0. the script stage (you are here)
1. the command line stage
2. the container stage 
3. the compose stage
4. the workflow stage
5. the core application stage 

Right now you are at a *branch* of the repository that is representing the *script stage*. You can switch between stages using the dropdown menu on the top left on [GitHub](https://github.com/labdao/lab-reverse_complement) or by calling *git switch* on your command line.

## the script stage
Congratulations, you likely just recently learned how to write code (for example python / R) and now want to explore ways to share the tool you have built with others or store it for future use. Right now your repository contains the following objects: 
* main.py - this is the script in which your application lives in; right now it is a biopython function that takes an input that is defined in the script
* a .gitignore file and other git related files - this file helps keep your [git](https://lab.github.com/githubtraining/introduction-to-github) repository clean

## what is wrong with the script stage?
The script stage is ok if you are trying to have a very quick fix for your development needs. However, you will quickly run into trouble if you are trying to share this application with a collegue or your future self: 
* it is hard to change the input to the application and generate the reverse complement for another sequence

## how to move to the command line stage?
Let's take this script and break the code down into a function and introduce a method to read input from the command line.
