module "eks" {
## Import module template
source = "terraform-aws-modules/eks/aws"
version = "~> 20.24" 
## Cluster-info (Control-plane)
cluster_name = var.name
cluster_endpoint_public_access = true
vpc_id = module.vpc.vpc_id 
subnet_ids = module.vpc.private_subnets

cluster_addons = {
vpc-cni = {
most-recent = true
}
kube-proxy = {
most-recent = true
}
core-dns = {
most-recent = true
}

}

## Control plane network
control_plane_subnet_ids = module.vpc.intra_subnets

## Manage nodes in your cluster
eks_managed_node_group_defaults = {

instance_types = ["t3.micro"]
attach_cluster_primary_security_group = true
}
eks_managed_node_groups = {
eks-demo-ng = {
instance_types = ["t3.micro"]

min_size = 1
max_size = 3
desired_size = 1
capacity_type = "SPOT"
}
}
tags = {
Environment = var.env
Terraform = "true"
}

}
