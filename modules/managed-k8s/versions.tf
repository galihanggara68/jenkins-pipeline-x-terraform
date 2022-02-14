terraform {
  required_version = "1.1.5"
  required_providers {
    kubernetes = {
		source  = "hashicorp/kubernetes"
		version = ">= 2.0.0"
    }
	alicloud = {
		source  = "aliyun/alicloud"
		version = ">= 1.151.0"
	}
  }
}