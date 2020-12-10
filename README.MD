# ds-tf-s3-access
This module creates two IAM policies, given a bucket name.

## Parameters

*bucket_name*: the name of the bucket to create read and write policies for.

## Resources Created
Creates two IAM policies:
<bucket-name>-read: Read only access to the bucket
<bucket-name>-write: Read-Write access to the bucket

## Outputs
read_policy_arn: The arn of the read policy
write_policy_arn: The arn of the read-write policy
