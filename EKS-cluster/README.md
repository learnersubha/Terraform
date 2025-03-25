For creating an EKS cluster with AWS provider required terraform files are:-
terraform.tf
provider.tf
variables.tf
vpc.tf
eks.tf

terraform.tf --> for create the provider

provider.tf --> for configure the provider

variable.tf --> For creating this ekd cluster used local variables, you can use the local variables where-ever you want in your tfstate.

vpc.tf --> creating vpc and subnets for deploying the eks cluster and its worker node within the vpc.

eks.tf --> 
