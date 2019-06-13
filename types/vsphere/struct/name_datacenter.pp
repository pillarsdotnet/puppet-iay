type IAY::Vsphere::Struct::Name_Datacenter = Struct[
  {
    name                    => IAY::Generic::String1_255,
    Optional[datacenter_id] => IAY::Vsphere::Datacenter::Id,
  }
]
