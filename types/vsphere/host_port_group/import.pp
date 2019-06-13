# The Import ID of a vsphere_host_port_group.

type IAY::Vsphere::Host_Port_Group::Import = Pattern[
  /\Atf-HostPortGroup:host-[0-9]+:.+\z/,
]
