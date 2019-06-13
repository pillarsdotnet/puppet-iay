# The managed object ID of the folder.

type IAY::Vsphere::Folder::Id = Pattern[
  /\Agroup-[dhnsv][0-9]+\z/,
  /\A\${data\.vsphere_folder\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
  /\A\${data\.vsphere_vapp_container\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.parent_folder_id\z/,
]
