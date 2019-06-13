type IAY::Vsphere::Compute_Cluster::Id = Pattern[
  /\Adomain-c[0-9]+\z/,
  /\A\${data\.vsphere_compute_cluster\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
  /\A\${data\.vsphere_compute_cluster_host_greoup\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
  /\A\${data\.vsphere_compute_cluster_vm_affinity_rule\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
  /\A\${data\.vsphere_compute_cluster_vm_anti_affinity_rule\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
  /\A\${data\.vsphere_compute_cluster_vm_dependency_rule\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
  /\A\${data\.vsphere_compute_cluster_vm_group\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
  /\A\${data\.vsphere_compute_cluster_vm_host_rule\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
  /\A\${data\.vsphere_dpm_host_override\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
  /\A\${data\.vsphere_drs_vm_override\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
  /\A\${data\.vsphere_ha_vm_override\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.compute_cluster_id}\z/,
]
