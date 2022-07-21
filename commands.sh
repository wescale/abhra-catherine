helm repo add argo-cd https://argoproj.github.io/argo-helm
helm dep update charts/argo-cd/

kubectl create namespace tools-sealed-secrets

kubectl --namespace tools-sealed-secrets apply -f secrets/master.key

helm install -n tools-argo --create-namespace abhra argo-cd/


kubectl -n tools-argo apply -f configuration/argo-cd-project.yaml
kubectl -n tools-argo apply -f configuration/argo-cd-application.yaml

# kubectl get secret -n tools-sealed-secrets -l sealedsecrets.bitnami.com/sealed-secrets-key -o yaml > secrets/master.key
# kubectl get secret -n tools-sealed-secrets -o yaml >> secrets/master.key




