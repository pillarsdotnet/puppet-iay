type IAY::Vsphere::Data = Struct[
  {
    Optional[vsphere_compute_cluster]            => IAY::Vsphere::Compute_Cluster::Data_Hash,
    Optional[vsphere_custom_attribute]           => IAY::Vsphere::Custom_Attribute::Data_Hash,
    Optional[vsphere_datacenter]                 => IAY::Vsphere::Datacenter::Data_Hash,
    Optional[vsphere_datastore]                  => IAY::Vsphere::Datastore::Data_Hash,
    Optional[vsphere_datastore_cluster]          => IAY::Vsphere::Datastore_Cluster::Data_Hash,
    Optional[vsphere_distributed_virtual_switch] => IAY::Vsphere::Distributed_Virtual_Switch::Data_Hash,
    Optional[vsphere_host]                       => IAY::Vsphere::Host::Data_Hash,
    Optional[vsphere_network]                    => IAY::Vsphere::Network::Data_Hash,
    Optional[vsphere_resource_pool]              => IAY::Vsphere::Resource_Pool::Data_Hash,
    Optional[vsphere_tag]                        => IAY::Vsphere::Tag::Data_Hash,
    Optional[vsphere_tag_category]               => IAY::Vsphere::Tag_Category::Data_Hash,
    Optional[vsphere_virtual_machine]            => IAY::Vsphere::Virtual_Machine::Data_Hash,
    Optional[vsphere_vmfs_disks]                 => IAY::Vsphere::VMFS_Disks::Data_Hash,
  }
]
