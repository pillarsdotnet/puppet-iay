type IAY::Vsphere::DRS_VM_Override::Id = Pattern[
  /\Acluster-[0-9]+\.+\z/,
  /\A\${data\.vsphere_drs_vm_override\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
]
