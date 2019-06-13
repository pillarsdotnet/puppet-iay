type IAY::Connection::WinRM = Struct[
  {
    Optional[cacert]      => IAY::Generic::String,
    Optional[host]        => IAY::Generic::String,
    Optional[https]       => IAY::Generic::Boolean,
    Optional[insecure]    => IAY::Generic::Boolean,
    Optional[password]    => IAY::Generic::String,
    Optional[port]        => IAY::Generic::Int0_65535,
    Optional[script_path] => IAY::Generic::Path,
    Optional[timeout]     => IAY::Generic::Duration,
    Optional['type']      => IAY::Connection::WinRM_Type,
    Optional[use_ntlm]    => IAY::Generic::Boolean,
    Optional[user]        => IAY::Generic::String,
  }
]
