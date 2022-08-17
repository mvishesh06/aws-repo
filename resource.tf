resource "aws_instance" "testec2" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.TerraformEc2_Security.name]
  key_name = "Terraform_Key"
  tags = {
    Name = "Terraform-Ec2"
    Department = "DevOps"
  }
}

resource "aws_default_vpc" "main" {
  tags = {
    Name = "main"
  }
}