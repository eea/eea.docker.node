## Nodejs Docker Image

Generic Node Docker image with Chaperone.

The image is based on the [official node image](https://hub.docker.com/_/node/), and extends it with chaperone.

## Base docker image
 - [hub.docker.com](https://hub.docker.com/r/eeacms/node/)

## Source code
  - [github.com](https://github.com/eea/eea.docker.node)

## Usage
The usage is similar with the official node image, with some minor changes:

1. Dockerfile
<code>FROM eeacms/node</code>
2. ENTRYPOINT
It's not needed because eeacms/node has a default entrypoint what will start /code/app.js with chaperone. This can be overwritten in the applications Dockerfile
A specific ENTRYPOINT what takes advantage of chaperone should look like:
<code>ENTRYPOINT ["/usr/local/bin/chaperone", "/path_to_application/my_app.js"]</code>
3. CMD
eeacms/node defines a default CMD: "runserver", so by default it's not needed to be specified in the Dockerfile
