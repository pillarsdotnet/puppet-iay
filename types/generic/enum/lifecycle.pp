# Lifecycle Customizations

type IAY::Generic::Enum::Lifecycle = Struct[
  {
    Optional[create_before_destroy] => Boolean,
    Optional[prevent_destroy]       => Boolean,
    Optional[ignore_changes]        => IAY::Generic::Array::String,
  }
]
