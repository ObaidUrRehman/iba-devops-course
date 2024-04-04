docker build . -t obaidr/todo-app

docker run -e MONGODB_URI=mongodb+srv://obaid:iba123@cluster0.vhstvh5.mongodb.net/main -p 3000:3000 obaidr/todo-app

https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-access-for-kubectl

gcloud components install gke-gcloud-auth-plugin

gcloud container clusters get-credentials demo-cluster-s --region=us-central1-c

kubectl create secret generic app-secret --from-env-file=.env
