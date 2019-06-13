# Controls the action to take on virtual machines when the cluster has detected
# a permanent device loss to a relevant datastore.
# Default `disabled`

type IAY::Vsphere::Compute_Cluster::HA_Datastore_PDL_Response = Variant[
  Enum[
    'disabled',
    'restartAggressive',
    'warning',
  ],
  IAY::Generic::Ref,
]
