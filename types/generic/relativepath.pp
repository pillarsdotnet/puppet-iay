type IAY::Generic::RelativePath = Variant[
  Pattern[/\A[^\/\0]{1,255}(?:\/[^\/\0]{1,255})*\z/],
  IAY::Generic::Ref,
]
