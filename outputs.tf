output "duration" {
  value = {
    for unit, factor in local.nanoseconds_per_unit :
    unit => floor((local.total_nanoseconds / factor) + 0.5)  # rounding
  }
  description = <<EOT
  Object containing the total amount of duration in `nanoseconds`, `microseconds`, `milliseconds`, `seconds`, `minutes`, `hours`, `days`, and `weeks` rounded to the nearest number.
EOT
}
