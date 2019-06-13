# When destroying the resource, setting this to true will auto-remove any hosts
# that are currently a member of the cluster, as if they were removed by taking
# their entry out of host_system_ids (see below). This is an advanced option and
# should only be used for testing.
# Default `false`

type IAY::Vsphere::Compute_Cluster::Force_Evacuate_On_Destroy = IAY::Generic::Boolean
