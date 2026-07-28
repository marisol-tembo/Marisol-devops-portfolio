resource "aws_s3_bucket" "website" {
  bucket = "tembo-rico-bucket"

  tags = {
    Project   = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}