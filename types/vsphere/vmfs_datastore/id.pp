# The Managed Object ID of a vsphere_vmfs_datastore.

type IAY::Vsphere::VMFS_Datastore::Id = Pattern[
  /\Adatastore-[0-9]+\z/,
]
