variable "project" {
  description = "Project name used for naming convention"
  type        = string
}
variable "location" {
  description = "Azure location"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group to deploy into"
  type        = string
}
variable "tags" {
  description = "Tags applied for all resources"
  type        = map(string)
  default     = {}

}