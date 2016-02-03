## Docker Node

There are 3 docker images that have nodejs apps all based on node:4.2.2, these docker images are similar (eea.docker.node can be used for eea.docker.aide, eea.docker.pam and eea.docker.eeasearch). 
We combine all 3 docker images into one base image that have the same content. 

This image contains the official Node 4.2+ image. 
It introduces process management from Chaperone. It includes an user (named node) with ID < 1000.
