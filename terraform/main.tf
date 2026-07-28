resource "aws_s3_bucket" "website" {
  bucket = "sol-tembos-bucket"

  tags = {
    Name      = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}