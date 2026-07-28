resource "aws_s3_bucket" "website" {
  bucket = "los-tembos-bucket"

  tags = {
    Name      = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}