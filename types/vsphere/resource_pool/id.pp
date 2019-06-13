# The Managed Object ID of a vsphere_resource_pool.

type IAY::Vsphere::Resource_Pool::Id = Pattern[
  /\Aresgroup-[0-9]+\z/,
  /\A\${data\.vsphere_compute_cluster\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.resource_pool_id\z/,
  /\A\${data\.vsphere_host\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.resource_pool_id\z/,
  /\A\${data\.vsphere_resource_pool\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.parent_resource_pool_id\z/,
  /\A\${data\.vsphere_vapp_container\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.parent_resource_pool_id\z/,
  /\A\${data\.vsphere_virtual_machine\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.esource_pool_id\z/,
]
