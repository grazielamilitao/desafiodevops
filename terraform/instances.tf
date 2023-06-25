# criando o template do perfil da instancia da maquina
resource "aws_instance" "web" {
  ami = "data.aws_ami.ubuntu.id" #imagem recuperada aws
  instance_type = var.instance_type #tipo da instancia
  key_name = var.instance_key_name #chave da instancia aws

  tags = {
    Name = "desafio-terraform"
  }
}