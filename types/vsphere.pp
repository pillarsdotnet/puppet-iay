type IAY::Vsphere = Struct[
  {
    password                        => IAY::Generic::Sensitive,
    user                            => IAY::Generic::String,
    vsphere_server                  => IAY::Generic::Host,
    Optional[allow_unverified_ssl]  => IAY::Generic::Boolean,
    Optional[client_debug]          => IAY::Generic::Boolean,
    Optional[client_debug_path]     => IAY::Generic::Path,
    Optional[client_debug_path_run] => IAY::Generic::Filename,
    Optional[persist_session]       => IAY::Generic::Boolean,
    Optional[rest_session_path]     => IAY::Generic::Absolutepath,
    Optional[vim_session_path]      => IAY::Generic::Absolutepath,
    # "meta-arguments" defined by Terraform itself.
    Optional[alias]                 => IAY::Generic::Alias,
    Optional[connection]            => IAY::Connection,
    Optional[version]               => IAY::Generic::Version,
  }
]
