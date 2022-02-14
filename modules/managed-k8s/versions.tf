terraform {
  required_version = "1.1.3"
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