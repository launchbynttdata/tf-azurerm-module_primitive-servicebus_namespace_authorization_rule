// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

output "id" {
  description = "The Service Bus Topic ID"
  value       = azurerm_servicebus_namespace_authorization_rule.rule.id
}

output "name" {
  description = "The name of the Service Bus Namespace Authorization Rule."
  value       = azurerm_servicebus_namespace_authorization_rule.rule.name
}

output "primary_key" {
  description = "The primary key for the Service Bus Namespace Authorization Rule."
  value       = azurerm_servicebus_namespace_authorization_rule.rule.primary_key
}

output "secondary_key" {
  description = "The secondary key for the Service Bus Namespace Authorization Rule."
  value       = azurerm_servicebus_namespace_authorization_rule.rule.secondary_key
}

output "primary_connection_string" {
  description = "The primary connection string for the Service Bus Namespace Authorization Rule."
  value       = azurerm_servicebus_namespace_authorization_rule.rule.primary_connection_string
}

output "secondary_connection_string" {
  description = "The secondary connection string for the Service Bus Namespace Authorization Rule."
  value       = azurerm_servicebus_namespace_authorization_rule.rule.secondary_connection_string
}

output "primary_connection_string_alias" {
  description = "The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired."
  value       = azurerm_servicebus_namespace_authorization_rule.rule.primary_connection_string_alias
}

output "secondary_connection_string_alias" {
  description = "The alias Secondary Connection String for the ServiceBus Namespace"
  value       = azurerm_servicebus_namespace_authorization_rule.rule.secondary_connection_string_alias
}
