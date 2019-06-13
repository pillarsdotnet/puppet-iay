# The relative path to a folder to put this cluster in. This is a path relative
# to the datacenter you are deploying the cluster to. Example: for the dc1
# datacenter, and a provided folder of foo/bar, Terraform will place a cluster
# named terraform-compute-cluster-test in a host folder located at
# /dc1/host/foo/bar, with the final inventory path being
# /dc1/host/foo/bar/terraform-datastore-cluster-test.

type IAY::Vsphere::Compute_Cluster::Folder = IAY::Generic::Path
