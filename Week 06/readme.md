# Flux Demo

### Repo for flux

https://github.com/ObaidUrRehman/flux-minikube

### Repo for K8 Deployements:

https://github.com/ObaidUrRehman/flux-demo-app

### First install flux:

https://fluxcd.io/flux/installation/#install-the-flux-cli

### Perform Flux prechecks

`flux check --pre`

### Install Flux in MiniKube

`flux bootstrap github --owner=ObaidurRehman --repository=flux-minikube --path=cluster --personal`

### Check what Flux pods, deployments Flux created in Flux-system namespace

`kubectl get pods,deployment -n flux-system`

minikube service webapp-service

### Command to create Flux source yaml

`flux create source git demoapp --url=https://github.com/ObaidUrRehman/flux-demo-app --branch=main --interval=30s --export > demoapp-source.yaml`

### Command to create Flux Kustomization yaml

`flux create kustomization demoapp --source=demoapp --path="./kustomize" --prune=true --validation=client --interval=5m --export > demoapp-kustomization.yaml`

flux get kustomizations

flux get sources git
kubectl get gitrepositories.source.toolkit.fluxcd.io -n flux-system

# Suspend or resume flux

flux suspend kustomization demoapp
flux resume kustomization demoapp
