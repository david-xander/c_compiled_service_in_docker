# Buiding a C service compiled and delivered throgh a container
It is a WIP. The main idea is to have a daemon service, that I could call at port 8000 and then to use a custom WSGI written in python and a custom

First I'll program the service and then I'll use my own python WSGI or Gunicorn itself if I haven't finished my own by then.

I'm going to start with the simple Dockerfile and then write the docker-compose.yml after.

## In order to build the image
docker build -t my-gcc-app .

## To run the image
docker run -it --rm --name my-running-app my-gcc-app

## If you want just to compile and check
docker run --rm -v "$PWD":/app/src -w /app/src gcc:4.9 gcc -o helloworld helloworld.c