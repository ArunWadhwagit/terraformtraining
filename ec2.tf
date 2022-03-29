resource "aws_instance" "example" {
    ami           = "ami-00ee4df451840fa9d"
    instance_type = "t2.micro"
}
resource "aws_instance" "exampleagain" {
    ami           = "ami-00ee4df451840fa9d"
    instance_type = "t2.micro"
}


# # provider "azurerm" {
# #     version = "~>2.0"
# #     features {}
# # resource "azurerm_resource_group" "mailpushrg" {
# #     name     = "mailpushrg"
# #     location = "westeurope"
# #   tags = {
# #         environment = "mailpush"
# #     }
# # resource "azurerm_virtual_network" "mailpushnet" {
# #     name                = "mailpush_net"
# #     address_space       = ["10.0.0.0/8"]
# #     location            = azurerm_resource_group.mailpushrg.location
# #     resource_group_name = azurerm_resource_group.mailpushrg.name
# # }
# # resource "azurerm_subnet" "mailpushapinet" {
# #     name                 = "api_net"
# #     resource_group_name  = azurerm_resource_group.mailpushrg.name
# #     virtual_network_name = azurerm_virtual_network.mailpushnet.name
# #     address_prefixes       = ["10.0.2.0/24"]
# # }
# # }
# # }
# ##############Dynamic Variables#####################
# # variable "sg_ports" {
# #   type        = list(number)
# #   description = "list of ingress ports"
# #   default     = [8200, 8201,8300, 9200, 9500]
# # }

# # resource "aws_security_group" "dynamicsg" {
# #   name        = "dynamic-sg"
# #   description = "Ingress for Vault"

# #   dynamic "ingress" {
# #     for_each = var.sg_ports
# #     iterator = port
# #     content {
# #       from_port   = port.value
# #       to_port     = port.value
# #       protocol    = "tcp"
# #       cidr_blocks = ["0.0.0.0/0"]
# #     }
# #   }

# #   dynamic "egress" {
# #     for_each = var.sg_ports
# #     content {
# #       from_port   = egress.value
# #       to_port     = egress.value
# #       protocol    = "tcp"
# #       cidr_blocks = ["0.0.0.0/0"]
# #     }
# #   }
# # }
# # resource "aws_vpc" "my_vpc" {
# #   cidr_block = "172.16.0.0/16"
# #   tags = {
# #     Name = "tf-0.12-dynamic-block-example"
# #   }
# # }
# # resource "aws_security_group" "main" {
# #    name   = "resource_without_dynamic_block"
# #    vpc_id = data.aws_vpc.myvpc.id

# #    ingress {
# #       description = "ingress_rule_1"
# #       from_port   = 443
# #       to_port     = 443
# #       protocol    = "tcp"
# #       cidr_blocks = ["0.0.0.0/0"]
# #    }

# #    ingress {
# #       description = "ingress_rule_2"
# #       from_port   = 80
# #       to_port     = 80
# #       protocol    = "tcp"
# #       cidr_blocks = ["0.0.0.0/0"]
# #    }

# #    tags = {
# #       Name = "AWS security group non-dynamic block"
# #    }
# # }
# resource "random_integer" "example" {
#   count = module.this.enabled ? 1 : 0

#   min = 1
#   max = 50000
#   keepers = {
#     example = var.example
#   }
# }

# # locals {
# #   example = format("%v %v", var.example, join("", random_integer.example[*].result))
# # }

# # resource "aws_instance" "foo" {
# #   ami           = "ami-005e54dee72cc1d00"
# #   instance_type = "t2.micro"
# # } //Delete the Instance

# resource aws_s3_bucket "blah" {
#   bucket = "bucketforpractice21march"
# }

# # # locals {
# # #   service_name = "forum"
# # #   owner        = "Community Team"
# # # }
# # # locals {
# # #   # Common tags to be assigned to all resources
# # #   common_tags = {
# # #     Service = local.service_name
# # #     Owner   = local.owner
# # #   }
# # # }
# # # resource "aws_instance" "foo" {
# # #   ami           = "ami-005e54dee72cc1d00"
# # #   instance_type = "t2.micro"
# # #   tags = local.common_tags
# # # connection {
# # #     type        = "ssh"
# # #     user        = "ec2-user"
# # #     private_key = file("./terraform-nginx.pem")
# # #     host        = self.public_ip
# # #   }
# # #   provisioner "remote-exec" {
# # #     inline = [
# # #       "sudo amazon-linux-extras enable nginx1.12",
# # #       "sudo yum -y install nginx",
# # #       "sudo systemctl start nginx"
# # #     ]
# # #   }
# # # }


# # # resource "random_id" "id" {
# # #  byte_length = 8
# # # }

# # # locals {
# # # name  = (var.name != "" ? var.name : random_id.id.hex)
# # #   owner = var.name
# # #   common_tags = {
# # #     Owner = local.owner
# # #     Name  = local.name
# # #   }
# # # }
# # # resource "aws_instance" "foo" {
# # # ami           = "ami-005e54dee72cc1d00"
# # # instance_type = "t2.micro"
# # # tags = local.common_tags
# # #  }
# # resource "null_resource" "readcontentfile" {
# #   provisioner "local-exec" {
# #     command = "helloworld.ps1"
# #     interpreter = ["PowerShell", "-Command"]
# #   }
# # }
# resource "aws_instance" "march" {
# ami           = "ami-005e54dee72cc1d00"
# instance_type = "t2.micro"
# }
# resource "aws_instance" "prod" {
# ami           = "ami-005e54dee72cc1d00"
# instance_type = "t2.micro"
# tags = {
#     Name = "web - ${terraform.workspace}"
# }
# }
