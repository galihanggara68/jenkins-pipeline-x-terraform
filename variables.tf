variable "k8s_name_prefix" {
  description = "The name prefix used to create managed kubernetes cluster."
  # default     = "tf-ack"
}

variable "cpu_core_count" {
  # default = 2
}

variable "memory_size" {
  # default = 4
}

variable "worker_number" {
  # default = 2
}

variable "worker_data_disk_size" {
  # default = 100
}

variable "password" {
  # default = "P@assword123"
}

variable "vpc_cidr_block" {
  # default = "10.1.0.0/21"
}

variable "vswitch_cidr_block" {
  # default = "10.1.1.0/24"
}

variable "pod_cidr" {
  # default = "172.20.0.0/16"
}

variable "service_cidr" {
  # default = "172.21.0.0/20"
}

variable "resource_group_id" {
  # default = "rg-aek2kdtpdwb7qfi"
}