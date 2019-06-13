# The managed object ID of the vsphere_distributed_port_group.

type IAY::Vsphere::Distributed_Port_Group::Id = Variant[
  IAY::Vsphere::UUID,
  Pattern[
    /\A\${data\.vsphere_distributed_port_group\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.key}\z/,
  ],
]
