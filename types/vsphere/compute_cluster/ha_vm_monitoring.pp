# The type of virtual machine monitoring to use when HA is enabled in the
# cluster.
# Default `'vmMonitoringDisabled'`

type IAY::Vsphere::Compute_Cluster::HA_VM_Monitoring = Variant[
  Enum[
    'vmMonitoringDisabled',
    'vmMonitoringOnly',
    'vmAndAppMonitoring',
  ],
  IAY::Generic::Ref,
]
