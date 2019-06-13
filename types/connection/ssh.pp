type IAY::Connection::SSH = Struct[
  {
    Optional[agent]               => IAY::Generic::Boolean,
    Optional[agent_identity]      => IAY::Generic::String,
    Optional[bastion_host]        => IAY::Generic::String,
    Optional[bastion_host_key]    => IAY::Generic::String,
    Optional[bastion_password]    => IAY::Generic::String,
    Optional[bastion_port]        => IAY::Generic::Int0_65535,
    Optional[bastion_private_key] => IAY::Generic::String,
    Optional[bastion_user]        => IAY::Generic::String,
    Optional[certificate]         => IAY::Generic::String,
    Optional[host]                => IAY::Generic::String,
    Optional[host_key]            => IAY::Generic::String,
    Optional[password]            => IAY::Generic::String,
    Optional[port]                => IAY::Generic::Int0_65535,
    Optional[private_key]         => IAY::Generic::String,
    Optional[script_path]         => IAY::Generic::Path,
    Optional[timeout]             => IAY::Generic::Duration,
    Optional['type']              => IAY::Connection::SSH_Type,
    Optional[user]                => IAY::Generic::String,
  }
]
