type IAY::Generic::Path = Variant[
  Pattern[/\A[^\0\/\0]{1,255}(?:\/[^\0\/\0]{1,255})*\z/],
  IAY::Generic::Ref,
]
