locals {
  # [^0-9A-Za-z_]
  regex = "/(\\W)/"

  # "Load Balancer" -> "load-balancer"
  project_sanitized = lower(replace(var.project, local.regex, var.separator))

  # "Staging" -> "staging"
  environment_sanitized = lower(replace(var.environment, local.regex, var.separator))

  # "staging"    -> "stgng"  -> "stg"
  # "production" -> "prdctn" -> "prd"
  regex2                 = "/([0-9AEIOUaeiou])/"
  environment_short_name = substr(replace(local.environment_sanitized, local.regex2, ""), 0, 3)
}
