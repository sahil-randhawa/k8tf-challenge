# Generate an SSH Key Pair
resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "terraform-key"
  public_key = tls_private_key.my_key.public_key_openssh
}

resource "local_file" "private_key" {
  content  = tls_private_key.my_key.private_key_pem
  filename = "terraform-key.pem"
}

# store the private key in s3 bucket
resource "aws_s3_object" "private_key" {
  bucket = "my-terraform-state-cy21"
  key    = "access-key/terraform-key"
  source = local_file.private_key.filename
}

# Create an EC2 Instance using the Key Pair
resource "aws_instance" "web_server" {
  ami           = "ami-0a474b3a85d51a5e5" # Ubuntu 20.04
  instance_type = "t2.micro"
  key_name      = aws_key_pair.generated_key.key_name

  tags = {
    Name = "Terraform-VM"
  }
}