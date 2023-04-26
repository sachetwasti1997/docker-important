# Use an existing docker image as base
# We want to use base image of ALPINE
# The purpose of specifying a base imnage is to give us an initial startinbg point
# Used alpine here because it includes default set of programs that is useful 
# for setting the redis image
FROM alpine

# Download and install a dependency
# apk is a package manager that comes preinstalled with ALPINE
# We have used the package manager to automatically download and install redis
RUN apk add --update gcc
RUN apk add --update redis

#Tell the image what to do when it starts as a container
#Argument to CMD
CMD [ "redis-server" ]

# docker build . --> gives the docker file off to docker cli