variable "tags" {
  type = map(string)
  default = {
    Environment = "production"
    Project     = "devops-na-nuvem"
  }
}

variable "assume_role" {
  type = object({
    region   = string
    role_arn = string
  })

  default = {
    region   = "us-west-1"
    role_arn = "arn:aws:iam::968225077300:role/DevOpsNaNuvemLive-aa08d36f-5ffe-4966-aba7-3a2c6fe52c5b"
  }
}

variable "remote_backend" {
  type = object({
    bucket_name                            = string
    dynamodb_table_name                    = string
    dynamodb_table_billing_mode            = string
    dynamodb_table_hash_key_attribute_name = string
    dynamodb_table_hash_key_attribute_type = string
  })

  default = {
    bucket_name                            = "devops-na-nuvem-remote-backend"
    dynamodb_table_name                    = "devops-na-nuvem-remote-backend"
    dynamodb_table_billing_mode            = "PAY_PER_REQUEST"
    dynamodb_table_hash_key_attribute_name = "LockID"
    dynamodb_table_hash_key_attribute_type = "S"
  }
}
