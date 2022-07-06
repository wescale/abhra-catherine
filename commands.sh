helm repo add argo-cd https://argoproj.github.io/argo-helm
helm dep update charts/argo-cd/

helm install -n tools-argo-cd --create-namespace argo-cd charts/argo-cd/

kubectl -n tools-argo-cd apply -f configuration/1-argo-cd-project.yaml
kubectl -n tools-argo-cd apply -f configuration/2-argo-cd-application.yaml