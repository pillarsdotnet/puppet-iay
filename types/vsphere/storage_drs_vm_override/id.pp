# A combination of the Managed Object ID of the datastore cluster, and the UUID
# of the virtual machine.

type IAY::Vsphere::Storage_DRS_VM_Override::Id = Pattern[
  /\Adatastore-[0-9]+:[0-9a-f]{2}(?: [0-9a-f]{2}){7}-[0-9a-f]{2}(?: [0-9a-f]{2})\z/,
]
