# tf-azurerm-module_primitive-servicebus_namespace_authorization_rule

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC_BY--NC--ND_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/)

## Overview

This module is managed via the Launch Terraform skeleton.

## Usage

See [examples/complete](examples/complete) for a full working example.

## Module Development

### Pre-Requisites

The following commands should be available on your system:

- `asdf` or `mise`
- `make`
- `python3` (for pre-commit)

Additionally, your `git` user and email must be configured. Run the `make configure` command from the root of the repository to ensure that you meet these requirements.

### Pre-Commit hooks

The [.pre-commit-config.yaml](.pre-commit-config.yaml) file defines `pre-commit` hooks for Terraform formatting, validation, documentation generation, and detect-secrets. Hooks are installed when you run `make configure`. Go linting runs via `make lint` in local development and CI, not via pre-commit.

### Terratest examples

Post-deploy tests in `tests/post_deploy_functional/` and `tests/post_deploy_functional_readonly/` target `examples/complete` via an explicit folder constant in each `main_test.go`. Adding another example requires a new test entry point or updating that constant; it is not picked up automatically.

### Local Validation

You should validate the changes you make to any module locally, prior to pushing your changes in a branch to GitHub.

1. Ensure that you have run `make configure` successfully.
2. Ensure you are signed into the appropriate cloud provider (e.g. Azure) for the module under test in your current console session.
3. Run the Terraform and Golang linters:

```
make lint
```

4. Once linters pass, run integration tests (apply, test, destroy):

```
make test
```

The pre-commit validations, as well as the `make lint` and `make test` targets, are performed in CI. Running them locally before opening a PR helps ensure a smooth review.

### Review & Merge Process

Open a Pull Request to the default (`main`) branch. The PR title must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/#specification) format to merge and to drive semantic versioning.

Ensure CI workflows pass, address review feedback, and obtain approvals required by `CODEOWNERS`.

### Automatic Updates

Shared configuration and workflow files are largely managed through [launch-terraform-skeleton](https://github.com/launchbynttdata/launch-terraform-skeleton). Avoid one-off edits to copied skeleton files in this repository unless necessary (for example `.gitignore` entries for generated artifacts). Use `copier check-update` / `copier update` when refreshing from the skeleton.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|---------|
| [azurerm_servicebus_namespace_authorization_rule.rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_namespace_authorization_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_listen"></a> [listen](#input\_listen) | Specifies whether the Authorization Rule has listen permissions. | `bool` | `null` | no |
| <a name="input_manage"></a> [manage](#input\_manage) | Specifies whether the Authorization Rule has manage permissions. | `bool` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Service Bus Namespace Authorization Rule. | `string` | n/a | yes |
| <a name="input_namespace_id"></a> [namespace\_id](#input\_namespace\_id) | The ID of the Service Bus Namespace. | `string` | n/a | yes |
| <a name="input_send"></a> [send](#input\_send) | Specifies whether the Authorization Rule has send permissions. | `bool` | `null` | no |

## Outputs

| Name | Description |
|------|---------|
| <a name="output_id"></a> [id](#output\_id) | The Service Bus Topic ID |
| <a name="output_name"></a> [name](#output\_name) | The name of the Service Bus Namespace Authorization Rule. |
| <a name="output_primary_connection_string"></a> [primary\_connection\_string](#output\_primary\_connection\_string) | The primary connection string for the Service Bus Namespace Authorization Rule. |
| <a name="output_primary_connection_string_alias"></a> [primary\_connection\_string\_alias](#output\_primary\_connection\_string\_alias) | The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired. |
| <a name="output_primary_key"></a> [primary\_key](#output\_primary\_key) | The primary key for the Service Bus Namespace Authorization Rule. |
| <a name="output_secondary_connection_string"></a> [secondary\_connection\_string](#output\_secondary\_connection\_string) | The secondary connection string for the Service Bus Namespace Authorization Rule. |
| <a name="output_secondary_connection_string_alias"></a> [secondary\_connection\_string\_alias](#output\_secondary\_connection\_string\_alias) | The alias Secondary Connection String for the ServiceBus Namespace |
| <a name="output_secondary_key"></a> [secondary\_key](#output\_secondary\_key) | The secondary key for the Service Bus Namespace Authorization Rule. |
<!-- END_TF_DOCS -->