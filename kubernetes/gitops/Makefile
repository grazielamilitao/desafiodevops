all: cluster-create repos

cluster-create:
	- k3d cluster create desafio-kubernetes \
	--servers 1 --agents 3 \
	--api-port 6550 \
	--port 81:80@loadbalancer \
	--port 443:443@loadbalancer \

repos:
	helm repo update
	helm install app -f .././kubernetes/app/values.yaml .././kubernetes/app

destroy:
	k3d cluster delete desafio-kubernetes
	rm kubeconfig-desafio-kubernetes