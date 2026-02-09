output "frontend_url" {
  value = "http://${aws_s3_bucket.frontend.bucket}.s3-website-${var.region}.amazonaws.com"
}

output "api_url" {
  value = "${aws_apigatewayv2_stage.prod.invoke_url}/hello"
}
