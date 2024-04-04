## Grafan Prometheus Hands-on

### Install Helm

Install Helm `choco install kubernetes-helm` (Windows)

## Install Prometheus

2. `helm repo add prometheus-community https://prometheus-community.github.io/helm-charts`
3. `helm repo update`
4. Install Promethrus into minikube: `helm install prometheus prometheus-community/prometheus`

## Access Prometheus

This command will convert the ‘prometheus-server’ Kubernetes Service from the ‘ClusterIP’ type to the ‘NodePort’ type.
`kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-ext`

And to lunch prometheus UI we run:

`minikube service prometheus-server-ext`

## Install Grafana

1. Install a new repo
   `helm repo add grafana https://grafana.github.io/helm-charts`

2. `helm repo update`

3. Install grafana into the kubernetes cluster
   `helm install grafana grafana/grafana`

## Acces Grafana

This command will convert the ‘Grafana-server’ Kubernetes Service from the ‘ClusterIP’ type to the ‘NodePort’ type. This will allow us to access the Grafana application outside the Minikube cluster on port ‘3000’.

`kubectl expose service grafana --type=NodePort --target-port=3000 --name=grafana-ext`

`minikube service grafana-ext`

## Get Grafana Password

#### Linux:

kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

#### Windows/Powershell:

[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($pass))
$pass = kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}"

## Add prometheus data source

## Add Dashboard

https://grafana.com/grafana/dashboards/315-kubernetes-cluster-monitoring-via-prometheus/

https://grafana.com/grafana/dashboards/6417-kubernetes-cluster-prometheus/
