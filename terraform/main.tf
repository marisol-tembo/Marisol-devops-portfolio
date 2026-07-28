resource "aws_s3_bucket" "website" {
  bucket = "tembo-family-bucket"

  tags = {
    Name      = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}