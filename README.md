creating dockerfile to run simple website in localhost and also using this to test docker , download this folder and containerise the app .

> docker image build -t demonasta10/gsd:animeweb1 .
> docker image ls
> docker image push demonasta10/gsd:animeweb1
# remove the local image 
> docker rm demonasta10/gsd:animeweb1
# pull image from registry .
> docker pull demonasta10/gsd:animeweb1
> docker run --name app -p 8000:8000 demonasta10/gsd:animeweb1 
# run in browser , will run in amd64 machine , install wsl to run this container . wsl --install (in cmd using admin mode ) 
http://localhost:8000
> docker stop app
> docker rmi -f demonasta10/gsd:animeweb1
