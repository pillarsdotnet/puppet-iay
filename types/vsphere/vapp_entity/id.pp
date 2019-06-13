# The Managed Object ID of a vsphere_vapp_entity.

type IAY::Vsphere::VApp_Entity::Id = Variant[
  /\Ares-[0-9]+:res-[0-9]+\z/,  # When target_id is a sub-container.
  /\Avm-[0-9]+:res-[0-9]+\z/,   # When target_id is a vm.
  /\A\${data\.vsphere_vapp_entity\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
]
