#Declarar un proveedor de nube
provider "aws" {
  region = "us-east-1"
  profile = "aws-icesi"
}

#Recursos declaraciones de componentes

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"

  tags = {
    Name = "backend"
  }
}


#Consultas de Datos (Opcional)



#Ciclo de vida Terraform

#Inicializar: terraform init

#Verificar diseño: terraform plan

#Aplicar el diseño: terraform apply

#Destruir infraestructura: terraform destroy
