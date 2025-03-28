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
    role_arn = "<YOUR_ROLE_ARN>"
  }
}

variable "queues" {
  type = list(object({
    name                      = string
    delay_seconds             = number
    max_message_size          = number
    message_retention_seconds = number
    receive_wait_time_seconds = number
  }))

  default = [
    {
      name                      = "devops-na-nuvem-queue-01"
      delay_seconds             = 90
      max_message_size          = 2048
      message_retention_seconds = 86400
      receive_wait_time_seconds = 10
    },
    {
      name                      = "devops-na-nuvem-queue-02"
      delay_seconds             = 90
      max_message_size          = 2048
      message_retention_seconds = 86400
      receive_wait_time_seconds = 10
    },
  ]
}
