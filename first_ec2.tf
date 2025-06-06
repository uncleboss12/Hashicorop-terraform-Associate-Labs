provider "aws" {
  region = "us-west-2"
  access_key = ""
  secret_key = ""
  
}

resource "aws_instance" "justine-terraform-first-ec2" {
  ami = "ami-097133556d56b9617"
  instance_type = "t2.micro"

  tags = {
    Name = "justine-ec2-terraform"
  }
} 