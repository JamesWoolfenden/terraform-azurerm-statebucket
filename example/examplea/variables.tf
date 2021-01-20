variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map(any)
}

variable "location" {
  type        = string
  description = "Azure Region to use"
  default     = "UK South"
}
