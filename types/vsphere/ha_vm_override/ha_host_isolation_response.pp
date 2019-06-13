type IAY::Vsphere::HA_VM_Override::HA_Host_Isolation_Response = Variant[
  Enum[
    'clusterIsolationResponse',
    'none',
    'powerOff',
    'shutdown',
  ],
  IAY::Output,
  IAY::Var,
]
