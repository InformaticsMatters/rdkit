# Dockerfile for building RDKit.

## Branches

* `master` - build from current RDKit master branch
* `Release_2015_03_1` - build from the Release_2015_03_1 release tag
* `Release_2015_09_2` - build from the Release_2015_09_2 release tag

GitHub repo for RDKit is [here](https://github.com/rdkit/rdkit).  
GitHub repo for this project is [here](https://github.com/InformaticsMatters/rdkit)

## Build and run
Create and run the docker image like this:

`docker build .`  
`docker run -it --rm <container id> bash`

Or alternatively use the pre-built image on [Dockerhub](https://hub.docker.com/r/informaticsmatters/rdkit/)

`docker pull informaticsmatters/rdkit`  
`docker run -it --rm informaticsmatters/rdkit bash`
