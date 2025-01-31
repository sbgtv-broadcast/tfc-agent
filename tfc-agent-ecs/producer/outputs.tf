output "aws_iam_role_assume_arn" {
  description = "Example IAM role created for terraform to use in consumer workspace"
  value       = aws_iam_role.assume.arn
}

output "vpc_id" {
  description = "The AWS VPC ID, which will be needed for peering with an HVN"
  value       = aws_vpc.main.id
}

output "webhook_url" {
  description = "Webhook URL if using autoscaling through workspace notifications"
  value       = aws_api_gateway_deployment.webhook.invoke_url
}
