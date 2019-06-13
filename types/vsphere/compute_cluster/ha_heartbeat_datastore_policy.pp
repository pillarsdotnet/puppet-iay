# The selection policy for HA heartbeat datastores.
# Default `'allFeasibleDsWithUserPreference'`

type IAY::Vsphere::Compute_Cluster::HA_Heartbeat_Datastore_Policy = Variant[
  Enum[
    'allFeasibleDs',
    'allFeasibleDsWithUserPreference',
    'userSelectedDs',
  ],
  IAY::Generic::Ref,
]
