resource "aws_instance" "k3s" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private.id

  user_data = <<-EOF
              #!/bin/bash
              curl -sfL https://get.k3s.io | sh -
              EOF

  tags = {
    Name = "k3s-node"
  }
}
