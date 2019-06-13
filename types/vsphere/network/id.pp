# The Managed Object ID of a vsphere_network.


type IAY::Vsphere::Network::Id = Pattern[
  /\Anetwork-[0-9]+\z/,
  /\A\${data\.vsphere_network\.[A-Za-z0-9_-]+(?:\.[0-9]+)?(?:\.p(?:rivate|ublic))?\.id}\z/,
  /\A\${data\.vsphere_virtual_machine\.[A-Za-z0-9_-]+(?:\.[0-9]+)?\.network_interface\.[0-9]+\.network_id}\z/,
]
