resource "aws_s3_bucket" "website" {
  bucket        = "tembo-rico-bucket"
  force_destroy = true

  tags = {
    Project   = "marisol-devops-portfolio"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_public_access_block" "website" {
  bucket = aws_s3_bucket.website.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = false
  restrict_public_buckets = false
}

data "aws_iam_policy_document" "website_public_access" {
  statement {
    sid    = "PublicReadWebsiteContent"
    effect = "Allow"

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject"
    ]

    resources = [
      "${aws_s3_bucket.website.arn}/*"
    ]
  }
}

resource "aws_s3_bucket_policy" "website_public_access" {
  bucket = aws_s3_bucket.website.id
  policy = data.aws_iam_policy_document.website_public_access.json

  depends_on = [
    aws_s3_bucket_public_access_block.website
  ]
}