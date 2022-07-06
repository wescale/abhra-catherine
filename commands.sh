helm repo add argo-cd https://argoproj.github.io/argo-helm
helm dep update charts/argo-cd/

helm install -n argo-cd --create-namespace argo-cd charts/argo-cd/