## Docker Node

There are 3 docker images that have nodejs apps all based on node:4.2.2, the docker images are similar (eea.docker.aide, eea.docker.pam, and eea.docker.eeasearch). 
We will combine all 3 docker images into one base image. 

This image contains the official Node 4.2+ image, it introduces process management from Chaperone. It includes an user (named node) with ID < 1000.
