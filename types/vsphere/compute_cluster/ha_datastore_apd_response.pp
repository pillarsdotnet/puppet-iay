# Controls the action to take on virtual machines when the cluster has detected
# loss to all paths to a relevant datastore.
# Default `disabled`

type IAY::Vsphere::Compute_Cluster::HA_Datastore_APD_Response = Variant[
  Enum[
    'disabled',
    'restartAggressive',
    'restartConservative',
    'warning',
  ],
  IAY::Generic::Ref,
]
