# Grab code commit repository resource
resource "aws_codecommit_repository" "Repos" {
    for_each = toset(var.repo_names)
    repository_name = each.value
    description = "GitHub repo for class 5"
}