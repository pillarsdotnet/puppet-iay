# The length of the reset window in which ha_vm_maximum_resets can operate. When
# this window expires, no more resets are attempted regardless of the setting
# configured in ha_vm_maximum_resets. -1 means no window, meaning an unlimited
# reset time is allotted. The value is specified in seconds.
# Default `-1`

type IAY::Vsphere::Compute_Cluster::HA_VM_Maximum_Failure_Window = IAY::Generic::Int_1
