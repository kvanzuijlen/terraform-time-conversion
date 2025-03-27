locals {
  nanoseconds_per_unit = {
    nanoseconds  = 1
    microseconds = 1000
    milliseconds = 1000 * 1000
    seconds      = 1000 * 1000 * 1000
    minutes      = 60 * 1000 * 1000 * 1000
    hours        = 60 * 60 * 1000 * 1000 * 1000
    days         = 24 * 60 * 60 * 1000 * 1000 * 1000
    weeks        = 7 * 24 * 60 * 60 * 1000 * 1000 * 1000
  }

  total_nanoseconds = sum([
    for unit, factor in local.nanoseconds_per_unit: (var.duration[unit] * factor)
  ])
}
