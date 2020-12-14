resource "aws_iam_policy" "read_policy" {
  name = "${var.bucket_name}-read"
  description = "Read-only access to ${var.bucket_name}"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetBucketLocation",
        "s3:ListBucket"
      ],
     "Resource": [
        "arn:aws:s3:::${var.bucket_name}"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": [
         "arn:aws:s3:::${var.bucket_name}/*"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_policy" "write_policy" {
  name = "${var.bucket_name}-write"
  description = "Read-Write access to ${var.bucket_name}"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetBucketLocation",
        "s3:ListBucket"
      ],
     "Resource": [
        "arn:aws:s3:::${var.bucket_name}"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
                "s3:PutObject",
                "s3:PutObjectAcl",
                "s3:GetObject",
                "s3:GetObjectAcl",
                "s3:DeleteObject"
      ],
      "Resource": [
         "arn:aws:s3:::${var.bucket_name}/*"
      ]
    }
  ]
}
EOF
}
