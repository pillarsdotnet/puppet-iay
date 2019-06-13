# Defines the managed object IDs of hosts to use as dedicated failover hosts.
# These hosts are kept as available as possible - admission control will block
# access to the host, and DRS will ignore the host when making recommendations.

type IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Failover_Host_System_Ids = IAY::Vsphere::Array::Host
