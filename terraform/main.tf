resource "aws_s3_bucket" "website" {
  bucket = "tembo-rico-bucket"

  tags = {
    Name      = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}