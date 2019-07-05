# @summary Builds infrastructure from yaml.
#
# Builds terraform control file; imports existing resources and calls terraform
# to build new resources.
#
# @example
#   include iay
#
# @param [IAY::Hash] hash
#   Structure representing the infrastructure to be enforced.
#
# @param [Stdlib::Absolutepath] workdir
#   Terraform working directory.
#
class iay(
  String[1]            $group   = 'puppet',
  IAY::Hash            $hash    = {},
  Stdlib::Absolutepath $logdir  = '/var/log/iay',
  Stdlib::Absolutepath $logfile = "${logdir}/iay.log",
  String[1]            $user    = 'root',
  Stdlib::Absolutepath $workdir = '/var/iay',
){
  include hashicorp::terraform
  anchor { 'iay-terraform-configured': }
  anchor { 'iay-terraform-initialized': }
  anchor { 'iay-terraform-imported': }
  Exec {
    cwd         => $workdir,
    group       => $group,
    path        => '/usr/local/bin:/usr/bin',
    provider    => 'shell',
    require     => Hashicorp::Download['terraform'],
    user        => $user,
  }
  File {
    before => Anchor['iay-terraform-configured'],
    owner  => $user,
    group  => $group,
  }
  $hash.keys.each |$k| {
    contain "iay::${k}"
  }
}
