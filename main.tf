provider "aws" {
     region = "ap-southeast-2"
}

resource "aws_security_group" "sg" {
  name        = "security group"
  description = "Give Security permissions"
 
  ingress {
    description = "For SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   
     ingress {
    description = "For HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
tags = {
    Name = "security group"
  }
}

resource "tls_private_key" "private_key" {
 algorithm = "RSA"
 rsa_bits = 4096
   }
   
resource "aws_key_pair" "pub_key" {
 key_name = "key"
 public_key = tls_private_key.private_key.public_key_openssh
}
output "key_ssh"{
  value = tls_private_key.private_key.public_key_openssh
}
output "pubkey"{
value = tls_private_key.private_key.public_key_pem
}
resource "local_file" "private_key" {
    depends_on = [tls_private_key.private_key]
    content = tls_private_key.private_key.private_key_pem
    filename = "key.pem"
    file_permission = 0400
}

resource "aws_instance"  "instance" {
  ami   = "ami-0732b62d310b80e97"
  instance_type = "t2.micro"
  key_name   = aws_key_pair.pub_key.key_name
  security_groups = ["sg"]
  availability_zone = "ap-south-1b"
tags = {
        Name = "My_instance"
   }
}

resource "aws_efs_file_system" "EFS-task"{
 creation_token="efs"
tags = {
Name= "EFS-task"
 }
}
resource "aws_efs_mount_target" "mount" {
file_system_id = aws_efs_file_system.EFS-task.id
subnet_id = "subnet-d0006b9c"
security_groups= [aws_security_group.security_group.id]
}
resource "null_resource" "mounting" {
depends_on = [ aws_efs_mount_target.mount, ]
connection  { 
             type = "ssh"
             user = "ec2-user"
             private_key = tls_private_key.private_key.private_key_pem
             host = aws_instance.Task-2.public_ip
      }
provisioner "remote-exec" {
    inline = [ 
                   "sudo yum install httpd php git -y",
                   "sudo systemctl restart httpd",
                   "sudo systemctl enable httpd",
                   "sudo mkfs.ext4  /dev/xvdh",
                   " sudo mount /dev/xvdh  /var/www/html",
                   "sudo yum install nfs-utils -y"
                  ]
          }
   }

resource "aws_s3_bucket" "task2-cloudsecguy-bucket" {
  bucket = "task2-cloudsecguy-bucket"
  acl = "public-read"
 
  versioning {
    enabled = true
  }
tags = {
    Name = "task2-cloudsecguy-bucket"
  }
}
resource "aws_s3_bucket_object" "task2_object" {
  bucket = aws_s3_bucket.task2-cloudsecguy-bucket.id
  key    = "image.jpg"
  source = "C:/Users/cloudsecguy garg/Desktop/practical.jpg"   
  acl = "public-read"
  
  force_destroy = true
}
 
 locals{
             s3_origin_id = "S3-${aws_s3_bucket.task2-cloudsecguy-bucket.bucket}"
}

resource "aws_cloudfront_distribution" "task2_cf" {
   depends_on=[aws_s3_bucket.task2-cloudsecguy-bucket]
   origin {
        domain_name = aws_s3_bucket.task2-cloudsecguy-bucket.bucket_regional_domain_name
        origin_id = aws_s3_bucket.task2-cloudsecguy-bucket.id
custom_origin_config {
            http_port = 80
            https_port = 80
            origin_protocol_policy = "match-viewer"
            origin_ssl_protocols = ["TLSv1", "TLSv1.1", "TLSv1.2"] 
        }
    }
       
    enabled = true
     is_ipv6_enabled = true
default_cache_behavior {
        allowed_methods = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
        cached_methods = ["GET", "HEAD"]
        target_origin_id = "${aws_s3_bucket.task2-cloudsecguy-bucket.id}"
         forwarded_values {
            query_string = false
        
            cookies {
               forward = "none"
            }
        }
viewer_protocol_policy = "allow-all"
        min_ttl = 0
        default_ttl = 3600
        max_ttl = 86400
    }
# Restricts who is able to access this content
    
       restrictions {
          geo_restriction {
              restriction_type = "none"
        }
    }
viewer_certificate {
        cloudfront_default_certificate = true
    }
     
      connection {
             type = "ssh"
             user = "ec2-user"
             private_key = tls_private_key.private_key.private_key_pem
             host = aws_instance.Task-2.public_ip
     }
    
   provisioner "remote-exec" {
    
    inline = [
     
     "sudo su << EOF",
              "echo \"<img src='http://${self.domain_name}/${aws_s3_bucket_object.task2_object.key}'>\" >> /var/www/html/index.php",
              "EOF", 
    ]
   }
}

