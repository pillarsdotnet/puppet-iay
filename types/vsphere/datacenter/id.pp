# The Managed Object ID of a vsphere_datacenter.

type IAY::Vsphere::Datacenter::Id = Pattern[
  /\Adatacenter-[0-9]+\z/,
  /\A\${data\.vsphere_datacenter\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,    # Terraform >= v2.0
  /\A\${data\.vsphere_datacenter\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.moid}\z/,  # Terraform < v2.0
  /\A\${data\.vsphere_compute_cluster\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datacenter_id}\z/,
  /\A\${data\.vsphere_datastore\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datacenter_id}\z/,
  /\A\${data\.vsphere_datastore_cluster\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datacenter_id}\z/,
  /\A\${data\.vsphere_distributed_virtual_switch\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datacenter_id}\z/,
  /\A\${data\.vsphere_host\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datacenter_id}\z/,
  /\A\${data\.vsphere_network\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datacenter_id}\z/,
  /\A\${data\.vsphere_resource_pool\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datacenter_id}\z/,
  /\A\${data\.vsphere_virtual_machine\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datacenter_id}\z/,
]
