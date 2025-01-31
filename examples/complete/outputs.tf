output "rule_id" {
  value = module.servicebus_namespace_authorization_rule.id
}

output "service_bus_endpoint" {
  value = module.servicebus_namespace.endpoint
}

output "service_bus_name" {
  value = module.servicebus_namespace.name
}

output "rule_name" {
  value = module.servicebus_namespace_authorization_rule.name
}
