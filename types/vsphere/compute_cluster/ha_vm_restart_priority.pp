# The default restart priority for affected virtual machines when vSphere
# detects a host failure.
# Default `'medium'`

type IAY::Vsphere::Compute_Cluster::HA_VM_Restart_Priority = Variant[
  Enum[
    'high',
    'highest',
    'low',
    'lowest',
    'medium',  # Default
  ],
  IAY::Generic::Ref,
]
