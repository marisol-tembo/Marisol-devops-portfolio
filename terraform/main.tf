resource "aws_s3_bucket" "website" {
  bucket = "sol-tembos-bucket"

  tags = {
    Project   = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}