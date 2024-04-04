## Create HP autoscaler

kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10

## Generate Load

kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"
