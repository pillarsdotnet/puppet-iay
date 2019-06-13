# The Managed Object ID of a vsphere_vapp_container.

type IAY::Vsphere::VApp_Container::Id = Pattern[
  /\Ares-[0-9]+\z/,
  /\A\${data\.vsphere_vapp_container\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id\z/,
  /\A\${data\.vsphere_vapp_entity\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.container_id\z/,
  /\A\${data\.vsphere_vapp_entity\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.target_id\z/,
]
