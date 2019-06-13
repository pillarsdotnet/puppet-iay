# The Managed Object ID of a vsphere_datastore.

type IAY::Vsphere::Datastore::Id = Pattern[
  /\Adatastore-[0-9]+\z/,
  /\A\${data\.vsphere_compute_cluster\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.ha_heartbeat_datastore_ids\.[0-9]+\z/,
  /\A\${data\.vsphere_virtual_machine\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.datastore_id\.[0-9]+\z/,
]
