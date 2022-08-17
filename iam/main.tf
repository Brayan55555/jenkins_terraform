provider "aws" {
    region = var.aws_region
}

resource "aws_iam_user" "iam_user1" {
    name = var.user
}

resource "aws_iam_policy" "iam_policy1" {
    name = var.policyname
    # description = "iam_policy1"
    # path = "/"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "s3:ListAllMyBuckets"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "iam_user_policy_attachment1" {
    user = aws_iam_user.iam_user1.name
    policy_arn = aws_iam_policy.iam_policy1.arn
}

