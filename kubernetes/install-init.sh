kubectl delete deployments --all
kubectl delete ingress --all
kubectl delete statefulsets --all
kubectl delete services --all
kubectl delete configmaps --all
kubectl delete pods --all --grace-period=0 --force
kubectl delete PersistentVolumeClaims --all
kubectl delete persistentvolumes --all
kubectl create -f ./blog-service.deployment.yml -f ./user-service.deployment.yml -f ./ingress.dev.yml