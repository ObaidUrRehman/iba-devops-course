kubectl create namespace iba
kubectl apply -f .

minikube service webapp-service -n iba
