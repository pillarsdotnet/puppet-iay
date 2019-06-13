# A prefix, the host system Managed Object ID, and the virtual switch name.

type IAY::Vsphere::Host_Port_Group::Id = Pattern[
  /\Atf-HostVirtualSwitch:host-[0-9]+:.+\z/,
]
