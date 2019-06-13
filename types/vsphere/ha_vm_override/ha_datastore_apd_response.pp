# Controls the action to take on this virtual machine when the cluster has
# detected loss to all paths to a relevant datastore.

type IAY::Vsphere::HA_VM_Override::HA_Datastore_APD_Response = Variant[
  Enum[
    'clusterDefault',  # Default
    'disabled',
    'warning',
    'restartConservative',
    'restartAggressive',
  ],
  IAY::Output,
  IAY::Var,
]
