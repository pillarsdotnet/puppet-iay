# Resource meta-arguments.

type IAY::Generic::Struct::Resource_Meta = Struct[
  {
    Optional[depends_on]  => String,
    Optional[count]       => Integer,
    Optional[provider]    => IAY::Generic::Provider_Ref,
    Optional[lifecycle]   => IAY::Generic::Enum::Lifecycle,
    Optional[provisioner] => IAY::Generic::Hash::String,
    Optional[connection]  => IAY::Generic::Array::String,
  }
]
