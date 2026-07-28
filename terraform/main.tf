resource "aws_s3_bucket" "website" {
  bucket = "marisol-tembo-bucket"

  tags = {
    Name      = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}