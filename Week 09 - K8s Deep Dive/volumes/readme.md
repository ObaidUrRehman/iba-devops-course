minikube ssh

sudo mkdir /mnt/data
sudo sh -c "echo 'Hello DevOps at IBA' > /mnt/data/index.html"

cat /mnt/data/index.html

# Create pv, pvc, pvp

kubectl get pvc
kubectl exec -it task-pv-pod -- /bin/bash

kubectl delete pod task-pv-pod
kubectl delete pvc task-pv-claim
kubectl delete pv task-pv-volume
