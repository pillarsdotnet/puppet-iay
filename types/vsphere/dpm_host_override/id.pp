type IAY::Vsphere::DPM_Host_Override::Id = Pattern[
  /\Acluster-[0-9]+-host-[0-9]+\z/,
  /\A\${data\.vsphere_dpm_host_override\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.id}\z/,
]
