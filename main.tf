module "managed-k8s" {
    source              = "./modules/managed-k8s"            

    vpc_cidr_block      = var.vpc_cidr_block
    vswitch_cidr_block  = var.vswitch_cidr_block

    cpu_core_count      = var.cpu_core_count      
    memory_size         = var.memory_size         

    worker_number       = var.worker_number       

    password            = var.password            

    pod_cidr            = var.pod_cidr            
    service_cidr        = var.service_cidr        

    worker_data_disk_size   = var.worker_data_disk_size   
}