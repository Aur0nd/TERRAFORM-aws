variable "project-sapphire-users" {
	type = list(string)
	default = [ "manos", "takis", "mitsos", "lakis"]
}

variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "eu-west-1"
}

