


# launch template for tooling

resource "aws_launch_template" "tooling-launch-template" {
  name = "p15-tooling"

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 20
    }
  }


  image_id = "ami-09e67e426f25ce0d7"

  instance_initiated_shutdown_behavior = "terminate"

  instance_type = "t2.micro"

  key_name = "devops"


  monitoring {
    enabled = true
  }

  placement {
    availability_zone = "us-east-1a"
  }


  vpc_security_group_ids = [aws_security_group.tooling-sg.id]

  tag_specifications {
    resource_type = "instance"


    tags = {
      Name            = "tooling-launch-template"
      Enviroment      = "production"
      Owner-Email     = "infradev-segun@darey.io"
      Managed-By      = "Terraform"
      Billing-Account = "1234567890"
    }
  }

  user_data = filebase64("${path.module}/bin/tooling.sh")
  // user_data =  file("./bin/tooling.sh")
}