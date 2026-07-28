resource "aws_s3_bucket" "website" {
  bucket = "los-tembos-bucket"

  tags = {
    Project   = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}