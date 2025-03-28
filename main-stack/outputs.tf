output "queue_arns" {
  value = aws_sqs_queue.this[*].arn
}
