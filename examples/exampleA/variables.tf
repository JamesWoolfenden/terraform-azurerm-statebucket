variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = "map"
}

variable "location" {
  description = "Azure Region to use"
  default     = "UK South"
}
