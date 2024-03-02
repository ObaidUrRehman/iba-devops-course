https://github.com/ObaidUrRehman/flux-minikube

flux check --pre

flux bootstrap github --owner=ObaidurRehman --repository=flux-minikube --path=cluster --personal

kubectl get pods,deployment -n flux-system

minikube service webapp-service

flux create source git demoapp --url=https://github.com/ObaidUrRehman/flux-demo-app --branch=main --interval=30s --export > demoapp-source.yaml

flux create kustomization demoapp --source=demoapp --path="./kustomize" --prune=true --validation=client --interval=5m --export > demoapp-kustomization.yaml

flux get kustomizations

flux get sources git
kubectl get gitrepositories.source.toolkit.fluxcd.io -n flux-system

flux suspend kustomization demoapp
flux resume kustomization demoapp
