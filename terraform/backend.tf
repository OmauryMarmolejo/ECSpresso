terraform {
  backend "s3" {
    bucket = "terraform-state-ecspresso"
    key = "production/terraform.tfstate"
    region = "us-west-1"
    encrypt = true
    
  }
}