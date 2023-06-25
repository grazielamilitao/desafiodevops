#security group - define as regras de conexoes de entrada e saída

# grupo de seguranca para trafego com a internet 
resource "aws_security_group" "internet" {

  name = "internet"
  description = "Grupo de seguranca para internet"

  # entrada pela porta 80 para a porta 80
  ingress {
    # origem
    from_port = 80 #http
    # destino   
    to_port    = 80
    protocol   = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // permite acesso a partir de qualquer IP
  }

  # entrada pela porta 443 para a porta 443
  ingress {
    from_port   = 443 #https
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // permite acesso a partir de qualquer IP
  }

 #connectivity to ubuntu mirrors is required to run `apt-get update` and `apt-get install apache2`
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Security Group SSH
resource "aws_security_group" "ssh" {

  name = "ssh"

  description = "Grupo de Seguranca do ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # prota aberta
  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"

    security_groups = [aws_security_group.ssh.id]
  }

  # Saida para todos os Ips e todos os protocolos
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

}