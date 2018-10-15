provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "crassus" {
  bucket = "oni-build"
  acl    = "public-read"
}

resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.crassus.bucket}"
  key = "artifact"
  source = "./hello-server"
}
