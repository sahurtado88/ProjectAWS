# Overview

This Terraform module provisions the following resources:

- IAM User: Creates a user in AWS IAM with administrative privileges.
- S3 Bucket: Sets up an S3 bucket to store Terraform state files, with versioning enabled and a bucket policy attached.
- DynamoDB Table: Creates a DynamoDB table for state locking and consistency checks when using Terraform.

# Usage Example
Here is an example of how to use this Terraform module in your configuration:

```
module "backend" {
  source      = "./modules/remotebackend"
  iam_user    = var.iam_user
  bucket_name = var.bucket_name
  table_name  = var.table_name
}

```
create a .tfvar to configure the values on the variables according to the needs and environment

In this example:
```
# terraform.tfvars
environment = "dev"
iam_user    = "terraform-dev"
bucket_name = "sterraform-remote-backend-s3-sahr2024-dev"
table_name  = "terraform_state_locks-dev"
region      = "us-east-1"
```

The IAM user terraform is created.
An S3 bucket named sterraform-remote-backend-s3-sahr2024 is provisioned to store the Terraform state files.
A DynamoDB table named terraform_state_locks is created for state locking in the region us-east-1 .

# Notes
## Resource Deletion Protection:

Both the S3 bucket and DynamoDB table have prevent_destroy lifecycle rules enabled to prevent accidental deletion. To delete these resources, you must first remove the prevent_destroy attribute from the configuration.

## AWS Credentials:

Ensure that the AWS credentials configured in your environment have the necessary permissions to create IAM users, S3 buckets, and DynamoDB tables.

This module is essential for managing Terraform state files securely and ensuring consistency during Terraform operations by using AWS best practices.