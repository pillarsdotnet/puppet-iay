# Automatically determine available resource percentages by
# subtracting the average number of host resources
# represented by the
# ha_admission_control_host_failure_tolerance setting from
# the total amount of resources in the cluster. Disable to
# supply user-defined values.
# Default `true`

type IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Resource_Percentage_Auto_Compute = IAY::Generic::Boolean
