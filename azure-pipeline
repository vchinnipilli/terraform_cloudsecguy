[0m[31m[1m
8 potential problems detected:

[0m[0m[31m[1m[1m[4mProblem 1[0m[31m[1m
[0m[0m
  [34m[[39mAWS008[34m][39m[34m[[39m[0m[33mWARNING[39m[0m[34m][39m Resource 'aws_security_group.sg' defines a fully open ingress security group.
  [34m/src/main.tf:14[39m

[0m[0m  [34m    11[39m | [0m[0m[33m    from_port   = 22[39m
[0m[0m  [34m    12[39m | [0m[0m[33m    to_port     = 22[39m
[0m[0m  [34m    13[39m | [0m[0m[33m    protocol    = "tcp"[39m
[0m[0m  [34m    14[39m | [0m[0m[1m[31m    cidr_blocks = ["0.0.0.0/0"][39m[0m[39m
[0m[0m  [34m    15[39m | [0m[0m[33m  }[39m
[0m[0m  [34m    16[39m | [0m[0m[33m   [39m
[0m[0m  [34m    17[39m | [0m[0m[33m     ingress {[39m
[0m
[0m  [34mSee https://github.com/liamg/tfsec/wiki/AWS008 for more information.[39m

[0m[0m[31m[1m[1m[4mProblem 2[0m[31m[1m
[0m[0m
  [34m[[39mAWS008[34m][39m[34m[[39m[0m[33mWARNING[39m[0m[34m][39m Resource 'aws_security_group.sg' defines a fully open ingress security group.
  [34m/src/main.tf:22[39m

[0m[0m  [34m    19[39m | [0m[0m[33m    from_port   = 80[39m
[0m[0m  [34m    20[39m | [0m[0m[33m    to_port     = 80[39m
[0m[0m  [34m    21[39m | [0m[0m[33m    protocol    = "tcp"[39m
[0m[0m  [34m    22[39m | [0m[0m[1m[31m    cidr_blocks = ["0.0.0.0/0"][39m[0m[39m
[0m[0m  [34m    23[39m | [0m[0m[33m  }[39m
[0m[0m  [34m    24[39m | [0m[0m[33megress {[39m
[0m[0m  [34m    25[39m | [0m[0m[33m    from_port   = 0[39m
[0m
[0m  [34mSee https://github.com/liamg/tfsec/wiki/AWS008 for more information.[39m

[0m[0m[31m[1m[1m[4mProblem 3[0m[31m[1m
[0m[0m
  [34m[[39mAWS009[34m][39m[34m[[39m[0m[33mWARNING[39m[0m[34m][39m Resource 'aws_security_group.sg' defines a fully open egress security group.
  [34m/src/main.tf:28[39m

[0m[0m  [34m    25[39m | [0m[0m[33m    from_port   = 0[39m
[0m[0m  [34m    26[39m | [0m[0m[33m    to_port     = 0[39m
[0m[0m  [34m    27[39m | [0m[0m[33m    protocol    = "-1"[39m
[0m[0m  [34m    28[39m | [0m[0m[1m[31m    cidr_blocks = ["0.0.0.0/0"][39m[0m[39m
[0m[0m  [34m    29[39m | [0m[0m[33m  }[39m
[0m[0m  [34m    30[39m | [0m[0m[33mtags = {[39m
[0m[0m  [34m    31[39m | [0m[0m[33m    Name = "security group"[39m
[0m
[0m  [34mSee https://github.com/liamg/tfsec/wiki/AWS009 for more information.[39m

[0m[0m[31m[1m[4m[1mProblem 4[0m[31m[1m
[0m[0m
  [34m[[39mAWS001[34m][39m[34m[[39m[0m[33mWARNING[39m[0m[34m][39m Resource 'aws_s3_bucket.task2-cloudsecguy-bucket' has an ACL which allows public read access.
  [34m/src/main.tf:101[39m

[0m[0m  [34m    98[39m | [0m[0m[33m[39m
[0m[0m  [34m    99[39m | [0m[0m[33mresource "aws_s3_bucket" "task2-cloudsecguy-bucket" {[39m
[0m[0m  [34m   100[39m | [0m[0m[33m  bucket = "task2-cloudsecguy-bucket"[39m
[0m[0m  [34m   101[39m | [0m[0m[1m[31m  acl = "public-read"[39m[0m[39m
[0m[0m  [34m   102[39m | [0m[0m[33m [39m
[0m[0m  [34m   103[39m | [0m[0m[33m  versioning {[39m
[0m[0m  [34m   104[39m | [0m[0m[33m    enabled = true[39m
[0m
[0m  [34mSee https://github.com/liamg/tfsec/wiki/AWS001 for more information.[39m

[0m[0m[31m[1m[4m[1mProblem 5[0m[31m[1m
[0m[0m
  [34m[[39mAWS002[34m][39m[34m[[39m[0m[31mERROR[39m[0m[34m][39m Resource 'aws_s3_bucket.task2-cloudsecguy-bucket' does not have logging enabled.
  [34m/src/main.tf:99-109[39m

[0m[0m  [34m    96[39m | [0m[0m[33m          }[39m
[0m[0m  [34m    97[39m | [0m[0m[33m   }[39m
[0m[0m  [34m    98[39m | [0m[0m[33m[39m
[0m[0m  [34m    99[39m | [0m[0m[1m[31mresource "aws_s3_bucket" "task2-cloudsecguy-bucket" {[39m[0m[39m
[0m[0m  [34m   100[39m | [0m[0m[1m[31m  bucket = "task2-cloudsecguy-bucket"[39m[0m[39m
[0m[0m  [34m   101[39m | [0m[0m[1m[31m  acl = "public-read"[39m[0m[39m
[0m[0m  [34m   102[39m | [0m[0m[1m[31m [39m[0m[39m
[0m[0m  [34m   103[39m | [0m[0m[1m[31m  versioning {[39m[0m[39m
[0m[0m  [34m   104[39m | [0m[0m[1m[31m    enabled = true[39m[0m[39m
[0m[0m  [34m   105[39m | [0m[0m[1m[31m  }[39m[0m[39m
[0m[0m  [34m   106[39m | [0m[0m[1m[31mtags = {[39m[0m[39m
[0m[0m  [34m   107[39m | [0m[0m[1m[31m    Name = "task2-cloudsecguy-bucket"[39m[0m[39m
[0m[0m  [34m   108[39m | [0m[0m[1m[31m  }[39m[0m[39m
[0m[0m  [34m   109[39m | [0m[0m[1m[31m}[39m[0m[39m
[0m[0m  [34m   110[39m | [0m[0m[33mresource "aws_s3_bucket_object" "task2_object" {[39m
[0m[0m  [34m   111[39m | [0m[0m[33m  bucket = aws_s3_bucket.task2-cloudsecguy-bucket.id[39m
[0m[0m  [34m   112[39m | [0m[0m[33m  key    = "image.jpg"[39m
[0m
[0m  [34mSee https://github.com/liamg/tfsec/wiki/AWS002 for more information.[39m

[0m[0m[31m[1m[1m[4mProblem 6[0m[31m[1m
[0m[0m
  [34m[[39mAWS017[34m][39m[34m[[39m[0m[31mERROR[39m[0m[34m][39m Resource 'aws_s3_bucket.task2-cloudsecguy-bucket' defines an unencrypted S3 bucket (missing server_side_encryption_configuration block).
  [34m/src/main.tf:99-109[39m

[0m[0m  [34m    96[39m | [0m[0m[33m          }[39m
[0m[0m  [34m    97[39m | [0m[0m[33m   }[39m
[0m[0m  [34m    98[39m | [0m[0m[33m[39m
[0m[0m  [34m    99[39m | [0m[0m[1m[31mresource "aws_s3_bucket" "task2-cloudsecguy-bucket" {[39m[0m[39m
[0m[0m  [34m   100[39m | [0m[0m[1m[31m  bucket = "task2-cloudsecguy-bucket"[39m[0m[39m
[0m[0m  [34m   101[39m | [0m[0m[1m[31m  acl = "public-read"[39m[0m[39m
[0m[0m  [34m   102[39m | [0m[0m[1m[31m [39m[0m[39m
[0m[0m  [34m   103[39m | [0m[0m[1m[31m  versioning {[39m[0m[39m
[0m[0m  [34m   104[39m | [0m[0m[1m[31m    enabled = true[39m[0m[39m
[0m[0m  [34m   105[39m | [0m[0m[1m[31m  }[39m[0m[39m
[0m[0m  [34m   106[39m | [0m[0m[1m[31mtags = {[39m[0m[39m
[0m[0m  [34m   107[39m | [0m[0m[1m[31m    Name = "task2-cloudsecguy-bucket"[39m[0m[39m
[0m[0m  [34m   108[39m | [0m[0m[1m[31m  }[39m[0m[39m
[0m[0m  [34m   109[39m | [0m[0m[1m[31m}[39m[0m[39m
[0m[0m  [34m   110[39m | [0m[0m[33mresource "aws_s3_bucket_object" "task2_object" {[39m
[0m[0m  [34m   111[39m | [0m[0m[33m  bucket = aws_s3_bucket.task2-cloudsecguy-bucket.id[39m
[0m[0m  [34m   112[39m | [0m[0m[33m  key    = "image.jpg"[39m
[0m
[0m  [34mSee https://github.com/liamg/tfsec/wiki/AWS017 for more information.[39m

[0m[0m[31m[1m[1m[4mProblem 7[0m[31m[1m
[0m[0m
  [34m[[39mAWS021[34m][39m[34m[[39m[0m[31mERROR[39m[0m[34m][39m Resource 'aws_cloudfront_distribution.task2_cf' defines outdated SSL/TLS policies (missing minimum_protocol_version attribute)
  [34m/src/main.tf:161-163[39m

[0m[0m  [34m   158[39m | [0m[0m[33m              restriction_type = "none"[39m
[0m[0m  [34m   159[39m | [0m[0m[33m        }[39m
[0m[0m  [34m   160[39m | [0m[0m[33m    }[39m
[0m[0m  [34m   161[39m | [0m[0m[1m[31mviewer_certificate {[39m[0m[39m
[0m[0m  [34m   162[39m | [0m[0m[1m[31m        cloudfront_default_certificate = true[39m[0m[39m
[0m[0m  [34m   163[39m | [0m[0m[1m[31m    }[39m[0m[39m
[0m[0m  [34m   164[39m | [0m[0m[33m     [39m
[0m[0m  [34m   165[39m | [0m[0m[33m      connection {[39m
[0m[0m  [34m   166[39m | [0m[0m[33m             type = "ssh"[39m
[0m
[0m  [34mSee https://github.com/liamg/tfsec/wiki/AWS021 for more information.[39m

[0m[0m[31m[1m[1m[4mProblem 8[0m[31m[1m
[0m[0m
  [34m[[39mAWS020[34m][39m[34m[[39m[0m[31mERROR[39m[0m[34m][39m Resource 'aws_cloudfront_distribution.task2_cf' defines a CloudFront distribution that allows unencrypted communications.
  [34m/src/main.tf:149[39m

[0m[0m  [34m   146[39m | [0m[0m[33m               forward = "none"[39m
[0m[0m  [34m   147[39m | [0m[0m[33m            }[39m
[0m[0m  [34m   148[39m | [0m[0m[33m        }[39m
[0m[0m  [34m   149[39m | [0m[0m[1m[31mviewer_protocol_policy = "allow-all"[39m[0m[39m
[0m[0m  [34m   150[39m | [0m[0m[33m        min_ttl = 0[39m
[0m[0m  [34m   151[39m | [0m[0m[33m        default_ttl = 3600[39m
[0m[0m  [34m   152[39m | [0m[0m[33m        max_ttl = 86400[39m
[0m
[0m  [34mSee https://github.com/liamg/tfsec/wiki/AWS020 for more information.[39m

[0m