# The percentage of resource reduction that a cluster of virtual machines can
# tolerate in case of a failover. A value of 0 produces warnings only, whereas
# a value of 100 disables the setting.  Default: 100 (disabled).

type IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Performance_Tolerance = IAY::Generic::Int0_100
