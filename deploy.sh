kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml


kubectl delete service udagram-api-feed
kubectl delete service udagram-api-user
kubectl delete service udagram-reverseproxy
kubectl delete service udagram-frontend
kubectl delete service publicfrontend
kubectl delete service publicreverseproxy

kubectl apply -f udagram-api-user-service.yaml
kubectl apply -f udagram-api-feed-service.yaml
kubectl apply -f udagram-reverseproxy-service.yaml
kubectl apply -f udagram-frontend-service.yaml

kubectl expose deployment udagram-reverseproxy --type=LoadBalancer --name=publicreverseproxy

kubectl expose deployment udagram-frontend --type=LoadBalancer --name=publicfrontend

kubectl get service

kubectl get pods

kubectl get deploy

