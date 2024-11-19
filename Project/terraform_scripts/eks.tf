module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "17.24.0"

  cluster_name    = "my-eks-cluster"
  cluster_version = "1.31"
  subnets         = [aws_subnet.public.id, aws_subnet.public-2.id]
  vpc_id          = aws_vpc.main.id

  node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 2

      instance_types = ["t2.micro"]

      subnet_ids = [aws_subnet.public.id]
    }
  }
}
