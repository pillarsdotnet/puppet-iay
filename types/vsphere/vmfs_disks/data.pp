type IAY::Vsphere::VMFS_Disks::Data = Struct[
  {
    host_system_id   => IAY::Vsphere::Host::Id,
    Optional[filter] => String,
    Optional[rescan] => IAY::Generic::Boolean,
  }
]
