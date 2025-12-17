resource "aws_iam_instance_profile" "instance-profile" {
  name = "milind-profile"
  role = aws_iam_role.iam_role.name
}
