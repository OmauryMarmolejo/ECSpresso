variable "region" {
  type        = string
  default     = "us-west-1"
  description = "AWS region to deploy to"
}

variable "namespace" {
  type        = string
  default     = "app"
  description = "Namespace, which could be your organization name"
}

variable "stage" {
  type        = string
  default     = "prod"
  description = "Stage, which could be dev, staging, or prod"
}

variable "name" {
  type        = string
  default     = "ecspresso"
  description = "Name of the application"
}

variable "image_tag" {
  type        = string
  default     = "latest"
  description = "Tag of the docker image"
}

variable "container_port_mappings" {
  type = list(object({
    containerPort = number
    hostPort      = number
    protocol      = string
  }))
  default = [{
    containerPort = 3000
    hostPort      = 3000
    protocol      = "tcp"
  }]

  description = "The port mappings to configure for the container. This parameter maps to PortMappings in the Create a container section of the Docker Remote API and the --publish option to docker run."
}

variable "desired_count" {
  type        = number
  default     = 1
  description = "The number of instantiations of the specified task definition to place and keep running on your cluster."
}
