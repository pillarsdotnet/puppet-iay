# The condition used to determine whether or not virtual machines in a certain
# restart priority class are online, allowing HA to move on to restarting
# virtual machines on the next priority.
# Default `'none'`

type IAY::Vsphere::Compute_Cluster::HA_VM_Dependency_Restart_Condition = Variant[
  Enum[
    'appHbStatusGreen',
    'guestHbStatusGreen',
    'none',
    'poweredOn',
  ],
  IAY::Generic::Ref,
]
