type IAY::Vsphere::Virtual_Machine::Data = Struct[
  {
    name                                 => IAY::Generic::String1_255,
    Optional[datacenter_id]              => IAY::Vsphere::Datacenter::Id,
    Optional[scsi_controller_scan_count] => IAY::Generic::Int0,
  }
]
