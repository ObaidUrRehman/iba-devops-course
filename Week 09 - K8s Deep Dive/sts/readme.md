Enable Redis Cluster

$IPs = $(kubectl get pods -l app=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP}:6379 ')
kubectl exec -it redis-cluster-0 -- /bin/sh -c "redis-cli -h 127.0.0.1 -p 6379 --cluster create ${IPs}"
kubectl exec -it redis-cluster-0 -- /bin/sh -c "redis-cli -h 127.0.0.1 -p 6379 cluster info"

redis-cli -h 127.0.0.1 -p 6379 --cluster create 10.244.2.75:6379 10.244.2.76:6379 10.244.2.77:6379 10.244.2.78:6379 10.244.2.79:6379 10.244.2.80:6379

kubectl exec -it redis-cluster-0 -- /bin/sh
redis-cli -h redis-cluster -p 6379
