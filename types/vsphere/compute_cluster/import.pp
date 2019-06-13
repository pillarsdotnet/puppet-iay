# An existing cluster can be imported into this resource via the path to the cluster, via the following command:
# `terraform import vsphere_compute_cluster.compute_cluster /dc1/host/compute-cluster`
# The above would import the cluster named compute-cluster that is located in the dc1 datacenter.

type IAY::Vsphere::Compute_Cluster::Import = IAY::Generic::Path
