# terraform-spotinst-ocean-network-client
A Terraform module to install Ocean Network Client using Helm.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Examples](#examples)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [Documentation](#documentation)
- [Getting Help](#getting-help)
- [Community](#community)
- [Contributing](#contributing)
- [License](#license)

## Usage

```hcl
module "ocean-network-client" {
  source = "spotinst/ocean-network-client/spotinst"
}
```

## Examples

- [Basic](examples/basic)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_spotinst"></a> [spotinst](#requirement\_spotinst) | >= 1.39.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.this](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default                    | Required |
|------|-------------|------|----------------------------|:--------:|
| <a name="input_chart"></a> [chart](#input\_chart) | Chart name to be deployed. | `string` | `"ocean-network-client"`   | no |
| <a name="input_chart_repository"></a> [chart\_repository](#input\_chart\_repository) | Repository URL where to locate the Spot Ocean Network Client chart. | `string` | `"https://charts.spot.io"` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Chart version to be deployed. | `string` | `"1.0.11"`                 | no |
| <a name="input_config_map_name"></a> [config\_map\_name](#input\_config\_map\_name) | ConfigMap name. | `string` | `null`                     | no |
| <a name="input_image_pull_policy"></a> [image\_pull\_policy](#input\_image\_pull\_policy) | Image pull policy. | `string` | `null`                     | no |
| <a name="input_image_pull_secrets"></a> [image\_pull\_secrets](#input\_image\_pull\_secrets) | Image pull secrets. | `string` | `null`                     | no |
| <a name="input_image_repository"></a> [image\_repository](#input\_image\_repository) | Image repository. | `string` | `null`                     | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | Image tag. | `string` | `null`                     | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Kubernetes namespace where the components should be installed. | `string` | `null`                     | no |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Secret name. | `string` | `null`                     | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Documentation

If you're new to [Spot](https://spot.io/) and want to get started, please check out our [Getting Started](https://docs.spot.io/connect-your-cloud-provider/) guide, available on the [Spot Documentation](https://docs.spot.io/) website.

## Getting Help

We use GitHub issues for tracking bugs and feature requests. Please use these community resources for getting help:

- Ask a question on [Stack Overflow](https://stackoverflow.com/) and tag it with [terraform-spotinst](https://stackoverflow.com/questions/tagged/terraform-spotinst/).
- Join our [Spot](https://spot.io/) community on [Slack](http://slack.spot.io/).
- Open an issue.

## Community

- [Slack](http://slack.spot.io/)
- [Twitter](https://twitter.com/spot_hq/)

## Contributing

Please see the [contribution guidelines](.github/CONTRIBUTING.md).

## License

Code is licensed under the [Apache License 2.0](LICENSE).
