# The action to take on virtual machines when a host has detected that it has
# been isolated from the rest of the cluster.
# Default `'none'`

type IAY::Vsphere::Compute_Cluster::HA_Host_Isolation_Response = Variant[
  Enum[
    'none',
    'powerOff',
    'shutdown',
  ],
  IAY::Generic::Ref,
]
