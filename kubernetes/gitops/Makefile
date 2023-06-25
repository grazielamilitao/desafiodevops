all: cluster-create docker repos

cluster-create:
	- k3d cluster create desafio-kubernetes \
	--servers 1 --agents 3 \
	--api-port 6550 \
	--port 81:80@loadbalancer \
	--port 443:443@loadbalancer \

docker:
	docker run -dp 127.0.0.1:3000:3000 grazielam/desafiodevops

repos:
	helm repo update
	helm install app -f .././kubernetes/app/values.yaml .././kubernetes/app

destroy:
	k3d cluster delete desafio-kubernetes