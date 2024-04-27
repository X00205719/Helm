helm repo add kiali https://kiali.org/helm-charts
helm install kiali kiali/kiali-server --namespace aks-istio-system  --set auth.strategy="anonymous" \
--set external_services.prometheus.url="http://prometheus-server.aks-istio-system:80" \
--set external_services.grafana.url=http://grafana.aks-istio-system:3000 \
--set external_services.istio.config_map_name=istio-asm-1-20 \
--set external_services.istio.istiod_deployment_name=istiod-asm-1-20 

--set external_services.istio.istiod_pod_monitoring_port=15014 \
--set external_services.istio.istio_api_enabled=false