resource "aws_iam_user" "users"{
        name = var.project-sapphire-users[count.index]
        count = length(var.project-sapphire-users)
}

resource "aws_iam_policy" "AdminUsers"{
	name = "AdminUsers"
	policy = file("admin-users.json")
}

resource "aws_iam_user_policy_attachment" "All-Users" {
	user = aws.iam.user.users.name
	policy_arn = aws_iam_policy.AdminUsers.arn
}
