type IAY::Generic::Version = Pattern[
  /\A<= [0-9]+(?:[.][0-9]+)*\z/,
  /\A<= [0-9]+(?:[.][0-9]+)*, >= [0-9]+(?:[.][0-9]+)*\z/,
  /\A>= [0-9]+(?:[.][0-9]+)*, <= [0-9]+(?:[.][0-9]+)*\z/,
  /\A>= [0-9]+(?:[.][0-9]+)*\z/,
  /\A~> [0-9]+(?:[.][0-9]+)*\z/,
]
