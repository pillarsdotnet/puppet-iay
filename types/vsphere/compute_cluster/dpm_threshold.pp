# A value between 1 and 5 indicating the threshold of load within the cluster
# that influences host power operations. This affects both power on and power
# off operations - a lower setting will tolerate more of a surplus/deficit than
# a higher setting.

type IAY::Vsphere::Compute_Cluster::DPM_Threshold = IAY::Generic::Int1_5
