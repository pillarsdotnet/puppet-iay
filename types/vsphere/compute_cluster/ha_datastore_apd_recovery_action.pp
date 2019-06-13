# Controls the action to take on virtual machines if an APD status on an
# affected datastore clears in the middle of an APD event.
# Default `none`

type IAY::Vsphere::Compute_Cluster::HA_Datastore_APD_Recovery_Action = IAY::Generic::Enum::Reset
