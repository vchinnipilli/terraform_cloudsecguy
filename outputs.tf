output "my-ip"{
                   value = aws_instance.Task-2.public_ip
}
resource "null_resource" "running_the_website" {
    depends_on = [null_resource.mounting]
    provisioner "local-exec" {
    command = "chrome ${aws_instance.Task-2.public_ip}"
  }
}