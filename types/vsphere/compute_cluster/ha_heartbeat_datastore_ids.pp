# The list of managed object IDs for preferred datastores to use for HA
# heartbeating. This setting is only useful when ha_heartbeat_datastore_policy
# is set to either userSelectedDs or allFeasibleDsWithUserPreference.

type IAY::Vsphere::Compute_Cluster::HA_Heartbeat_Datastore_Ids = IAY::Vsphere::Array::Datastore
