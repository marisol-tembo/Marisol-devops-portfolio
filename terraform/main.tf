resource "aws_s3_bucket" "website" {
  bucket = "sol-tembos-website-bucket"

  tags = {
    Project   = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}