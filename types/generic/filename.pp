type IAY::Generic::Filename = Variant[
  Pattern[/\A[^\/\0]{1,255}\z/],
  IAY::Generic::Ref,
]
