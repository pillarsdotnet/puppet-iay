type IAY::Vsphere::HA_VM_Override::HA_VM_Restart_Priority = Variant[
  Enum[
    'clusterRestartPriority',
    'high',
    'highest',
    'low',
    'lowest',
    'medium',
  ],
  IAY::Generic::Ref,
]
