resource "aws_s3_bucket" "website" {
  bucket = "marisol-tembo-bucket"

  tags = {
    Project   = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}