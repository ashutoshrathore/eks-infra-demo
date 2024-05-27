variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "my-eks-node-group"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}


variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Environment = "dev"
  }
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "vpc_id" {
  type = string
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