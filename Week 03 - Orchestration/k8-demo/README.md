#### K8s commands

kubectl apply -f mongo-config.yaml

kubectl apply -f mongo-secret.yaml

kubectl apply -f mongo-deployment.yaml

kubectl apply -f web-application.yaml

kubectl get all

#### K8s manifest files

- mongo-config.yaml
- mongo-secret.yaml
- mongo.yaml
- webapp.yaml

##### start Minikube and check status

    minikube start
    minikube status

##### get minikube node's ip address

    minikube ip

##### get basic info about k8s components

    kubectl get node -o wide
    kubectl get pod
    kubectl get svc
    kubectl get all

##### get application logs

    kubectl logs {pod-name}

##### stop your Minikube cluster

    minikube stop

If you can't access the NodePort service webapp with `MinikubeIP:NodePort`, execute the following command:

    minikube service webapp-service
    More info: https://stackoverflow.com/questions/60710171/minikube-ip-is-not-reachable
