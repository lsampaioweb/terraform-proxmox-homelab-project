locals {
  # [^0-9A-Za-z_]
  regex_not_digit_or_letter = "/(\\W)/"

  # "Load Balancer" -> "load-balancer"
  project_sanitized = lower(replace(var.project, local.regex_not_digit_or_letter, var.project_separator))

  # "Staging" -> "staging"
  environment_sanitized = lower(replace(var.environment, local.regex_not_digit_or_letter, var.project_separator))

  # "staging"    -> "stgng"  -> "stg"
  # "production" -> "prdctn" -> "prd"
  regex_digit_or_letter  = "/([0-9AEIOUaeiou])/"
  environment_short_name = substr(replace(local.environment_sanitized, local.regex_digit_or_letter, ""), 0, var.environment_short_name_maximum_size)
}
