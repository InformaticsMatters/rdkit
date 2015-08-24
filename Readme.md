# Dockerfile for building RDkit with Java wrappers.
Includes a very simple Java example in the src directory. 
Create and run the docker image like this:
`docker build .`
`docker run -it --rm -v $PWD/src:/examples <container id> bash`

Or alternatively use the pre-built image on Dockerhub: https://hub.docker.com/r/informaticsmatters/rdkit_java/
`docker pull informaticsmatters/rdkit_java
`docker run -it --rm -v $PWD/src:/examples informaticsmatters/rdkit_java bash`

Then in the container:

`cd /examples`

`./run.sh`

Javadocs are built into the directory /rdkit/Code/JavaWrappers/gmwrapper/doc
