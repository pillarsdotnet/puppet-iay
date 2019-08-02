type IAY::Generic::AbsolutePath = Variant[
  Pattern[
    /\A\/\z/,
    /\A(\/[^\/\0]{1,255})+\z/,
  ],
  IAY::Generic::Ref,
]
