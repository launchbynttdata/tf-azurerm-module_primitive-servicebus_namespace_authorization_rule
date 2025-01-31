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

variable "name" {
  description = "The name of the Service Bus Namespace Authorization Rule."
  type        = string
}

variable "namespace_id" {
  description = "The ID of the Service Bus Namespace."
  type        = string
}

variable "listen" {
  description = "Specifies whether the Authorization Rule has listen permissions."
  type        = bool
  default     = null
}

variable "send" {
  description = "Specifies whether the Authorization Rule has send permissions."
  type        = bool
  default     = null
}

variable "manage" {
  description = "Specifies whether the Authorization Rule has manage permissions."
  type        = bool
  default     = null
}
