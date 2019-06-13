# The maximum number of failed hosts that admission control tolerates when
# making decisions on whether to permit virtual machine operations. The maximum
# is one less than the number of hosts in the cluster.
# Default `1`

type IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Host_Failure_Tolerance = IAY::Generic::Int0
