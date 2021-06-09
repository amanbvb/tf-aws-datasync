#-----------------------------------------------------------------------------------------------------------
# Global variables
#-----------------------------------------------------------------------------------------------------------
variable "name" {
  default = "poc-agent"
}
variable "source_hostname" {
  default = "192.168.232.130"
}

variable "source_dir" {
  default = "datasyncsmb"
}

variable "bucket_arn" {
  default = "arn:aws:s3:::nfstest1"
}

variable "bucket_dir" {
  default = "/"
}

variable "s3_accessrole_arn" {
  default = "arn:aws:iam::<accntid>:role/service-role/<accessrolearn>"
}

variable "task_name" {
  default = "poc-task"
}

variable "kms_key" {
  default = "<AQICAHhJWwifGBf8Kr/wefjdWrs80YvgSe+BOX7gfwE95G6GzQHGycgwTGbQk6+sNFEdZ82FAAAAezB5BgkqhkiG9w0BBwagbDBqAgEAMGUGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMHKrpJtrM6VNkJI4JAgEQgDi/UUjCYAxNntN48xcEPq7Xx2GtPUmgxpak60MZrcpwTwf+DvNgpgRSLLJGY7/T8t4W4PlE/ybokQ==>"
}

variable "kms_user" {
  default = "<AQICAHhJWwifGBf8Kr/wefjdWrs80YvgSe+BOX7gfwE95G6GzQHLkbUI3pdj3dMKVmVzF7qdAAAAZzBlBgkqhkiG9w0BBwagWDBWAgEAMFEGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMg9/WT3f55uM4yiqlAgEQgCRVCq0FvMLxYDrDL3HhHv4OZ70cdKs1U7a9SWqImVtIIXpSHLw=>"
}

variable "kms_pass" {
  default = "<AQICAHhJWwifGBf8Kr/wefjdWrs80YvgSe+BOX7gfwE95G6GzQEmOqzbqAcaxpTd2y53TtT4AAAAajBoBgkqhkiG9w0BBwagWzBZAgEAMFQGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMy0l2JWwseHCm22BeAgEQgCdt41abFjCAQRnenzOn1o7M92z6ixyR+xz1rmVasH6a4Enndc1vYnw=>"
}
