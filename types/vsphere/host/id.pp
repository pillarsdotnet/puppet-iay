# The Managed Object ID of a vsphere_host.

type IAY::Vsphere::Host::Id = Pattern[
  /\Ahost-[0-9]+\z/,
  /\A\${data\.vsphere_host\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
  /\A\${data\.vsphere_compute_cluster\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_ids\.[0-9]+\z/,
  /\A\${data\.vsphere_compute_cluster\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.ha_admission_control_failover_host_system_ids\.[0-9]+\z/,
  /\A\${data\.vsphere_compute_cluster_host_group\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_ids\.[0-9]+\z/,
  /\A\${data\.vsphere_dpm_host_override\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_ids}\.[0-9]+\z/,
  /\A\${data\.vsphere_distributed_virtual_switch\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host\.[0-9]+\.host_system_id}\z/,
  /\A\${data\.vsphere_host_port_group\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_id}\z/,
  /\A\${data\.vsphere_host_virtual_switch\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_id}\z/,
  /\A\${data\.vsphere_nas_datastore\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_ids\.[0-9]+}\z/,
  /\A\${data\.vsphere_vmfs_datastore\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_id}\z/,
  /\A\${data\.vsphere_vmfs_disks\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_id}\z/,
  /\A\${data\.vsphere_virtual_machine\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.host_system_id}\z/,
]
