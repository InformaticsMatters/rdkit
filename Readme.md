# Dockerfile for building RDkit with Java wrappers.
Includes a very simple Java example in the src directory. 
Run docker like this:

`docker build .`

`docker run -it --rm -v $PWD/src:/examples <container id> bash`

Then in the container:

`cd /examples`

`./run.sh`

Javadocs are built into the directory /rdkit/Code/JavaWrappers/gmwrapper/doc