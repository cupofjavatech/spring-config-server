https://github.com/cupofjavatech/spring-config-server

# Spring Boot - Config Server

This Spring Boot Maven project is created to demonstrate how Kubernetes Volume works.

Under \k8s folder there are kubernetes deployment, service and Volumes files that will help you Create Project with Volume. 

Project contains some files under "spring-config-server\src\main\resources\config" which can be accessed using Service URL: 

Application is running on port 8071, which can be updated using server.port in application.yaml

e.g. 

Accessing Flight Service Configuration - for Default (Dev), qa, prod  

http://localhost:8071/flightservice/default  
http://localhost:8071/flightservice/qa  
http://localhost:8071/flightservice/prod  

Accessing Train Service Configuration - for Default (Dev), qa, prod  

http://localhost:8071/trainservice/default  
http://localhost:8071/trainservice/qa  
http://localhost:8071/trainservice/prod  

# Spring Application Useful Command
Building application : mvn clean install  
Running Application locally : mvn spring-boot:run  

# k8S Command
All K8s files under : spring-config-server\k8s  

kubectl exec -it config-server-b8698bfc5-d25b5 bash  

kubectl delete -f .\k8s\k8s-configserver-hostpath.yaml  
kubectl apply -f .\k8s\\k8s-configserver-hostpath.yaml  

kubectl delete -f .\k8s\k8s-configserver-containerfile.yaml  
kubectl apply -f .\k8s\k8s-configserver-containerfile.yaml  

kubectl get pods  

kubectl get services  

kubectl describe pod <pod-id>  

kubectl get events  

kubectl delete pods <pod> --grace-period=0 --force  

# Docker Command

docker build -t cupofjavatech/springconfigserver:v1 .  
docker push cupofjavatech/springconfigserver:v1  
