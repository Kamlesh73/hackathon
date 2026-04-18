module "vpc" {
 source = "./modules/vpc"
}

resource "aws_vpc" "vpc" {
subnet_id = var.subnet_id
name = var.key_name

tags = {
Name = var.name
}
}
