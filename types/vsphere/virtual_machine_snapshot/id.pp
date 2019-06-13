# The Managed Object ID of the snapshot.

type IAY::Vsphere::Virtual_Machine_Snapshot::Id = Pattern[
  /\Asnap-[0-9]+\z/,
]
