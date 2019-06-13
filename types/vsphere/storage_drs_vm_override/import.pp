# An existing override can be imported by supplying both the path to the
# datastore cluster and the path to the virtual machine.

type IAY::Vsphere::Storage_DRS_VM_Override::Import = Pattern[
  /\A{"datastore_cluster_path": "\/[^"]+", "virtual_machine_path": "\/[^"]+"}\z/,
]
