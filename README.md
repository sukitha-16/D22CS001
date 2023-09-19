# D22CS001
Docker-Assignment
Author: D22CS001 
Name: Sukitha


Steps:
1: I have installed Docker Desktop (Windows 11) [from https://docs.docker.com/engine/install/]
2: I have created a simple Weather application in which the user can see the current day's weather details and the next day's weather details by entering a city name.
3: Then I have created a Dockerfile , In which I have used alpine as the base OS image. [ one can downlowd/get information from: https://hub.docker.com/search?image_filter=official&type=image&q=]
4: then I have included additional information like, port, CMD. 

5: Now I have using below sytax to build my application and create a docker image named simple-weather and the dot represented next to docker image says that copying the files from current directory to docker image
syntax:  
docker build -t simple-weather . 

Note: This command added a new entry into docker images, I got results as

     input:   docker images
     output:  REPOSITORY       TAG       IMAGE ID       CREATED       SIZE
              simple-weather   latest    a35e0766476f   20 minutes ago   42.6MB
              
6: Then I have executed the docker image, which created a new docker container . I followed below code to do so.
code:
docker run -d -p 8080:80 simple-weather

This syntax executed container, and generated a full length container id
I verified it by using following commands:

       input: docker ps
       output:  CONTAINER ID   IMAGE            COMMAND                  CREATED             STATUS           PORTS                  NAMES
                cd45cf5e57af   simple-weather   "/docker-entrypoint.…"   20 minutes ago      Up 20 minutes    0.0.0.0:8080->80/tcp   elated_thompson

7: Then I open Docker desktop -> images (simple-weather) [I observed, this image as in-use]
    I clicked on in-use option and navigated to containers, Then I found elated_thompson name for my newly created Docker container, under simple-weather image which is accessible from 8080:80 port
    Finally, I clicked on Port number and my web application is accessible. 
    Then I have executed it.

    [Optional] In this process, I have created my images, and One conflict was having same port number. so I assigned different portnumbers to different images, but later once I finalised the app while doing updations in application
    I simply removed containers , and images. 
    I checked 
        input:     docker ps    
                    %%% this thing lists, running docker containers. it displays the container ids with docker images
        input:     docker stop my-container-id
                     %%%% I replaced the id value and delected uncessesary docker containers

        input:     docker images
                    %%%% This command displays available docker images, including created docker , exsting docker images with image id
        input:      docker rmi my-image-id
                      %%%%% I replaced the my-image-id with id value I got from docker images. and cleaned up the uncessary docker images. 
8. Finally I deployed all the files to Git.


