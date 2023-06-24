# Instruções

## build image 

```
docker build - < Dockerfile

```

# Kubernetes 

## Criando o Cluster localmente (k3d)

k3d version v5.4.3
k3s version v1.23.6-k3s1 (default)

k3d cluster create desafio-kubernetes \
--servers 1 --agents 3 \
--api-port 6550 \
-p 80:80@loadbalancer \
-p 443:443@loadbalancer

helm repo update

helm install app -f ./kubernetes/app/values.yaml ./kubernetes/app


## Configurando Hosts

```
kubectl get service -A | grep traefik
```

### Editar no arquivo /etc/hosts
```
<IP_TRAEFIK> app.desafiokubernetes
```
### Chamando os servicos

```
http://app.desafiokubernetes
```

## healthcheck 
```
curl http://app.desafiokubernetes/healthcheck/
```

## Operacoes para a apresentacao


kubectl get pods
kubectl scale deployment postgres --replicas=0
kubectl scale deployment users --replicas=0
kubectl scale deployment users --replicas=1