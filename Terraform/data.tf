data "aws_instance" "selected" {
  instance_id = aws_instance.web_server.id
}