# The type of admission control policy to use with vSphere HA.
# Default `resourcePercentage`

type IAY::Vsphere::Compute_Cluster::HA_Admission_Control_Policy = Variant[
  Enum[
    'disabled',
    'failoverHosts',
    'resourcePercentage',
    'slotPolicy',
  ],
  IAY::Generic::Ref,
]
