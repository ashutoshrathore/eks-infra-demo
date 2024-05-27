variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "my-node-group"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 4
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_count" {
  description = "Number of public subnets"
  type        = number
  default     = 2
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_count" {
  description = "Number of private subnets"
  type        = number
  default     = 2
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "tags" {
  type = map(any)
}

variable "allowed_cidr_blocks" {
  type        = List
  default     = []
  description = "CIDR Blocks that are allowed to access cluster"
}

variable "ami_type" {
  type        = string
  description = "Type of ami type associated with eks node group"
}

variable "node_image_version" {
  type        = string
  description = " AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version."
}

variable "node_kubernetes_version" {
  type        = string
  description = "Kubernetes version."
}

variable "disk_size" {
  type        = number
  description = " Disk size in GiB for worker nodes."
  default     = 20
}

variable "capacity_type" {
  type        = string
  description = "Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT"
  default     = "ON_DEMAND"
}

variable "instance_types" {
  type        = list(any)
  description = "ist of instance types associated with the EKS Node Group. Defaults to t3.medium"
  default     = ["t3.medium"]
}

variable "cluster_k8s_version" {
  type        = string
  description = "Desired Kubernetes master version"
}