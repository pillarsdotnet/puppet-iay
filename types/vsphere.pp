type IAY::Vsphere = Struct[
  {
    password                        => IAY::Generic::Sensitive,
    user                            => IAY::Generic::String,
    vsphere_server                  => Stdlib::Host,
    Optional[allow_unverified_ssl]  => Boolean,
    Optional[client_debug]          => Boolean,
    Optional[client_debug_path]     => Stdlib::Absolutepath,
    Optional[client_debug_path_run] => Pattern[/\A[^\0\/\0]{1,255}\z/],
    Optional[persist_session]       => Boolean,
    Optional[rest_session_path]     => Stdlib::Absolutepath,
    Optional[vim_session_path]      => Stdlib::Absolutepath,
    # "meta-arguments" defined by Terraform itself.
    Optional[alias]                 => IAY::Generic::Alias,
    Optional[connection]            => IAY::Connection,
    Optional[version]               => IAY::Generic::Version,
  }
]
