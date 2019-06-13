type IAY::Vsphere::Datastore_Cluster::Id = Pattern[
  /\Adomain-[0-9]+\z/,
  /\A\${data\.vsphere_datastore_cluster\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
  /\A\${data\.vsphere_datastore_cluster_vm_anti_affinity_rule\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datastore_cluster_id}\z/,
  /\A\${data\.vsphere_nas_datastore\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datastore_cluster_id}\z/,
  /\A\${data\.vsphere_storage_drs_vm_override\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datastore_cluster_id}\z/,
  /\A\${data\.vsphere_vmfs_datastore\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datastore_cluster_id}\z/,
]
