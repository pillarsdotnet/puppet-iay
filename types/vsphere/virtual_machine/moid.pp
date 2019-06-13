# The Managed Object ID of a vsphere_virtual_machine.

type IAY::Vsphere::Virtual_Machine::MOId = Pattern[
  /\Avm-[0-9]+\z/,
  /\A${data\.vsphere_virtual_machine\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id\z/,
  /\A\${data\.vsphere_vapp_entity\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.target_id\z/,
]
