variable "duration" {
  type = object({
    nanoseconds = optional(number, 0)
    microseconds = optional(number, 0)
    milliseconds = optional(number, 0)
    seconds = optional(number, 0)
    minutes = optional(number, 0)
    hours = optional(number, 0)
    days = optional(number, 0)
    weeks = optional(number, 0)
  })
  description = "Object that contains values for the duration. These values will be summed up."
}
