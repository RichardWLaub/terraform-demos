# Set Amazon provider
provider "aws" {
  region = "us-east-1"
}

# Create EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
