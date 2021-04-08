resource "google_project_iam_custom_role" "custom-role" {
  role_id     = "customRoleNokia"
  title       = var.role_title
  description = "Custom roles for Nokia"
  permissions = var.permissions_list
}