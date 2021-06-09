provider "aws" {
  region = "eu-west-2"
}

provider "local" {}

provider "template" {}

provider "terraform" {}

terraform {
  # backend "s3" {
  #   bucket = ""
  #   key    = ""
  #   region = "eu-west-2"
  # }
}

resource "aws_datasync_agent" "agent" {
  activation_key =  data.aws_kms_secrets.dsk.plaintext["dskey"]
  name       = var.name
}

resource "aws_datasync_location_smb" "source_location" {
  server_hostname = var.source_hostname
  subdirectory    = var.source_dir
  user     = data.aws_kms_secrets.dsk.plaintext["dsuser"]
  password = data.aws_kms_secrets.dsk.plaintext["dspass"]
  agent_arns = [aws_datasync_agent.agent.arn]
}

data "aws_kms_secrets" "dsk" {
  secret {
    name    = "dskey"
    payload = var.kms_key
  }
  secret {
    name    = "dsuser"
    payload = var.kms_user
  }
 secret {
    name    = "dspass"
    payload = var.kms_pass
  }
}

resource "aws_datasync_location_s3" "target_location" {
  s3_bucket_arn = var.bucket_arn
  subdirectory  = var.bucket_dir

  s3_config {
    bucket_access_role_arn = var.s3_accessrole_arn
  }
}

 resource "aws_datasync_task" "task" {
  destination_location_arn = aws_datasync_location_s3.target_location.arn
  name                     = var.task_name
  source_location_arn      = aws_datasync_location_smb.source_location.arn
  options {
    bytes_per_second = -1
    gid              = "NONE"
    posix_permissions= "NONE"    
    uid              = "NONE"    
 }
}

