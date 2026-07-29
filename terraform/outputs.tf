output "website_bucket_name" {
  description = "Name of the S3 website bucket"
  value       = aws_s3_bucket.website.bucket
}

output "cloudfront_domain_name" {
  description = "CloudFront domain for the portfolio website"
  value       = aws_cloudfront_distribution.website.domain_name
}

output "cloudfront_url" {
  description = "HTTPS URL for the portfolio website"
  value       = "https://${aws_cloudfront_distribution.website.domain_name}"
}

output "cloudfront_distribution_id" {
  description = "ID of the CloudFront distribution"
  value       = aws_cloudfront_distribution.website.id
}