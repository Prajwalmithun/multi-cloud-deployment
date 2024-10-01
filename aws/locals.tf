locals {
  cluster_name = "praj-eks-${random_string.suffix.result}"
}

locals {
  vpc_name = "eks-vpc-${random_string.suffix.result}"
}