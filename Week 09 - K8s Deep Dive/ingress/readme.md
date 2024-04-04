### Enable ingress on Minikube

minikube addons enable ingress
minikube addons enable ingress-dns

Then deploy the google hello app:

kubectl create deployment web --image=gcr.io/google-samples/hello-app:1.0

expose deployment

kubectl expose deployment web --type=NodePort --port=8080

Visit the Service via NodePort:

minikube service web --url

---

Create ingress

2nd deployment:

kubectl create deployment web2 --image=gcr.io/google-samples/hello-app:2.0

also expose it for testing if you want:

kubectl expose deployment web2 --port=8080 --type=NodePort

minikube tunnel

add 127.0.0.1 to host it to hello-world.info

See the magic.
