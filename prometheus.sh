helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/prometheus \
    --namespace aks-istio-system \
    --create-namespace \
    --set alertmanager.persistentVolume.storageClass="default" \
    --set server.persistentVolume.storageClass="default"
