variable "filename" {
  type        = string
  default     = "pets.txt"
  description = "Name of the output file"
}

variable "content" {
  description = "Text written into the file"
  type        = string
  default     = "I love cats"
}

variable "prefix" {
  description = "Prefix used for the generated pet name"
  type        = string
  default     = "MR"
}

variable "pet_length" {
  description = "Number of words in the generated pet name"
  type        = number
  default     = 1
}

variable "enabled" {
  description = "Whether to create the example resources"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Example map variable"
  type        = map(string)
  default = {
    Environment = "training"
    Owner       = "terraform-lab"
  }
}