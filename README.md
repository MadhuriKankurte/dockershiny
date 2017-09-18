# dockershiny
Dockerize Shiny Applications to make them platform independent.
With the docker model , we can safely say its platform independent as once the shiny app is bundled into docker image ,all thats needed is a docker daemon thread to get the app run.

This code set is a successful attempt to implement the usage of https://www.shinyproxy.io/ using the reference https://www.shinyproxy.io/getting-started/.

Although the implementation steps are as in the Get Started section , my source code ( ui.R and server.R) are an interest rate graph depiction.

The requirements are

For the setup :

1.Docker for Windows [https://www.docker.com/docker-windows] or any OS specific of your choice.

  To run the shiny app alongwith shinyproxy , a docker service is needed for the docker image to run.
  
2.shinyproxy jar 
   Used the spring boot java technology to help run the container instantiated by docker.
  
  Files to build the project as such :
  
1. Shiny app source code 
2. Dockerfile , to build the docker image
3. application.yml , to run the application
