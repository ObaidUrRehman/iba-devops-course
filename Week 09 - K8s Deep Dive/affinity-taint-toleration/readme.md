### Get Node labels

kubectl get nodes --show-labels=true.

### Taint a node

kubectl taint nodes node1 key1=value1:NoSchedule
