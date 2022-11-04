kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml

#kubectl delete deployment udagram-api-user
#kubectl delete deployment udagram-api-feed
#kubectl delete deployment udagram-reverseproxy
#kubectl delete deployment udagram-frontend

#kubectl delete service publicfrontend
#kubectl delete service publicreverseproxy

#kubectl delete service udagram-api-user
#kubectl delete service udagram-api-feed
#kubectl delete service udagram-reverseproxy
#kubectl delete service udagram-frontend

kubectl apply -f udagram-api-user-deployment.yaml
kubectl apply -f udagram-api-feed-deployment.yaml
sleep 10
kubectl apply -f udagram-api-user-service.yaml
kubectl apply -f udagram-api-feed-service.yaml
sleep 10
kubectl apply -f udagram-reverseproxy-deployment.yaml
kubectl apply -f udagram-frontend-deployment.yaml
sleep 10
kubectl apply -f udagram-reverseproxy-service.yaml
kubectl apply -f udagram-frontend-service.yaml

kubectl expose deployment udagram-frontend --type=LoadBalancer --name=publicfrontend

kubectl expose deployment udagram-reverseproxy --type=LoadBalancer --name=publicreverseproxy

sleep 10

kubectl get pods 
kubectl describe services
kubectl describe hpa