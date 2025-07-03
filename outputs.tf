output "api_endpoint" {
  value = aws_apigatewayv2_api.api.api_endpoint
}

output "s3_website_url" {
  value = aws_s3_bucket.frontend.website_endpoint
}