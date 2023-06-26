# Desafios 

1. [Terraform/IaC](https://github.com/idwall/desafios-devops/tree/master/terraform)
2. [Kubernetes](https://github.com/idwall/desafios-devops/tree/master/kubernetes)

# Instruções

## Terraform ##
Comandos utilizados (com o terraform instalado na máquina):
1. Terraform init - Inicializa o diretório de trabalho contendo arquivos de configuração do Terraform.
2. Terraform Plan - Permite visualizar as alterações que o Terraform fará em sua infraestrutura com os recursos configurados instância da aws.
3. Terraform Apply - Aplicar mudanças na aws

Nota: Não testei na AWS, apenas fiz os arquivos "template" de como deveria ser o projeto.

## Kubernetes ##
Você encontrará a sequência de comandos do makefile e explicação no readme dentro da pasta "./kubernetes/gitops/".

Nota: A imagem da aplicação não está subindo corretamente, porém quando puder irei corrigir isso.

# Execução #
## Kubernetes ##
Comandos utilizados (dentro do diretório "desafio-devops"):
1. cd ./kubernetes/gitops
2. make all