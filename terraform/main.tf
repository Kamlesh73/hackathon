terraform {
backend "s3" {
bucket    = "my-terraform-state"
key       = "path/to/terraform.tfstate"
region    = "us-west-2"
encrypt   = true
DynamoDB  = ddb-lock-table
}
}

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
