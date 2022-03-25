terraform {
  backend "s3"{
    bucket = "ebloemer-bucket"
    key = "vpc/terraform.state"
    region = "us-east-1"
  }  

}