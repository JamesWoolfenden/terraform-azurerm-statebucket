# terraform-azure-statebucket

[![Build Status](https://github.com/JamesWoolfenden/terraform-azure-statebucket/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azure-statebucket)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azure-statebucket.svg)](https://github.com/JamesWoolfenden/terraform-azure-statebucket/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-artifactory.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-artifactory/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-artifactory/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-artifactory&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-artifactory/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-artifactory&benchmark=INFRASTRUCTURE+SECURITY)

This repository demonstrates how to set up remote state for use with Terraform by Terraform, this time in Azure.
usage: |-
Add a reference to this module to your tf code, like this:

```terraform
module "statebucket" {
  source                   = "JamesWoolfenden/statebucket/azure"
  version                  = "0.2.0"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  location                 = "UK South"
  resource_group_name      = "terraform"
  common_tags              = var.common_tags
}
```

This module implements the common_tags scheme. In the the example implementation **examplea.auto.tfvars** you'll find a basic map described:

```HCL
common_tags = {
  environment = "Production"
}
```

Expand on these values to tag all your tagable resources.

This module should be run before nearly anything else as it sets up the remote state store. To do this it needs to be run twice. The first time to create the storage and also its own remote state file.
The second run pushes its own state to the state store.

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |
| local | n/a |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_replication\_type | Defaults to LRS, refer to azurerm provider docs for azurerm\_storage\_account to see valid values. | `string` | `"LRS"` | no |
| account\_tier | Defaults to Standard, refer to azurerm provider docs for azurerm\_storage\_account to see valid values. | `string` | `"Standard"` | no |
| common\_tags | This is a map type for applying tags on resources | `map` | n/a | yes |
| enable\_https\_traffic\_only | Set traffic to be encrypted | `string` | `true` | no |
| location | Azure Region to use, defaults to UK South | `string` | `"UK South"` | no |
| resource\_group\_name | Name of resource group in which to deploy storage account. | `string` | `"terraform"` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource\_group | n/a |
| storage\_account | n/a |
| storage\_container | n/a |
| subscription\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

## References

For additional context, refer to some of these links.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azure-statebucket/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azure-statebucket/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azure-statebucket&url=https://github.com/JamesWoolfenden/terraform-azure-statebucket
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azure-statebucket&url=https://github.com/JamesWoolfenden/terraform-azure-statebucket
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azure-statebucket
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azure-statebucket
[share_email]: mailto:?subject=terraform-azure-statebucket&body=https://github.com/JamesWoolfenden/terraform-azure-statebucket
