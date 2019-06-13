# The managed object ID of the vsphere_distributed_port_group.

type IAY::Vsphere::Distributed_Port_Group::Id = Pattern[
  /\Advportgroup-[0-9]+\z/,
  /\A\${data\.vsphere_distributed_port_group\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
]
