output "website_bucket_name" {
  description = "Name of the S3 website bucket"
  value       = aws_s3_bucket.website.bucket
}

output "website_url" {
  description = "S3 static website endpoint"
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
}