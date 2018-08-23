# Dockerfile for building RDKit

These images are created by doing a full RDKit build within the container.
As such they contain a lot of packages and are large in size and are NOT suitable for production hosting
of services. Only use them if you need to have the entire RDKit build infrastructure in place.

Fro production hosting you should instead use our second generation images that are hosted in this
[GitHub repo](https://github.com/InformaticsMatters/docker-rdkit).
The thinking behind this is described in our [blog](https://www.informaticsmatters.com/category/containers/index.html).
 

## Branches and tags

* `master` - build from current RDKit master branch
* `Release_2015_03_1` - build from the Release_2015_03_1 release tag
* `Release_2015_09_2` - build from the Release_2015_09_2 release tag
* `Release_2016_03_1` - build from the Release_2016_03_1 release tag
* `Release_2016_09_2` - build from the Release_2016_09_2 release tag
* `Release_2017_03_1` - build from the Release_2017_03_1 release tag
* `Release_2017_03_3` - build from the Release_2017_03_3 release tag


GitHub repo for RDKit is [here](https://github.com/rdkit/rdkit).
GitHub repo for this project is [here](https://github.com/InformaticsMatters/rdkit)

## Build and run
Create and run the docker image like this:

`docker build .`
`docker run -it --rm <container id> bash`

Or alternatively use the pre-built image on [Dockerhub](https://hub.docker.com/r/informaticsmatters/rdkit/)

`docker pull informaticsmatters/rdkit`
`docker run -it --rm informaticsmatters/rdkit bash`

