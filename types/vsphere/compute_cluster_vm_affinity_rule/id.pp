type IAY::Vsphere::Compute_Cluster_VM_Dependency_Rule::Id = Pattern[
  /\Acluster-[0-9]+\.+\z/,
  /\A\${data\.vsphere_compute_cluster_vm_dependency_rule\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
]
