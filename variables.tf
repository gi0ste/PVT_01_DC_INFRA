
variable "servers" {
  type = map(object({
    hostname = string
    license = string
    thumbprint = string
    maintenance_mode = bool
  }))
}


// The name of the new Compute Cluster
variable "dc_cluster_name" {
  type = string
}

// The SSH username used by vSphere to authenticate to the host
variable "h_username" {
  type = string
} 

// The SSH password associated to the user used by vSphere to authenticate to the host
variable "h_password" {
  type = string
  sensitive = true
} 

// The name of the DataCenter
variable "dc_name" {
  description = "Name of the DataCenter"
  type        = string
}

// The IP/FQDN of the vSphere Server
variable "vsphere_server" {
  description = "VMware vSphere IP address"
  type        = string
}

// The username used to access vSphere
variable "vsphere_user" {
  description = "VMware vSphere User Password"
  type        = string
}

// The password associated to the user to access vSphere
variable "vsphere_password" {
  description = "VMware vSphere User Password"
  type        = string
}