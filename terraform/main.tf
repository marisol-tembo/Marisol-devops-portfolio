resource "aws_s3_bucket" "website" {
  bucket = "tembo-family-bucket"

  tags = {
    Project   = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}