# A simple base of docker infrastructure

**Revision**: November 2023

**Keywords**: *software-architecture, IaC, Terraform, AWS*

**Contacts**: Markus von Steht

## Description

Getting started with Terraform on AWS with SSO. Example follows the standard tutorial in Hashicorp's [website](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build) but diverts in some points to be applicable to my own AWS setup:

- Using AWS SSO instead of standard credentials.
- Being restricted to a particular AWS region by corporate policy. As we are not able to use the hard-coded AMI ID for `us-east-1` we are performing a lookup for the correct ID for that region [instead](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build#troubleshooting).

### Getting started with the native AWS provider

1. Installing AWS CLI and running `aws configure sso`, creating a default profile with Administrator role/permissions (`<PROFILE>`). Not explained in detailed, look [here](https://docs.aws.amazon.com/cli/latest/userguide/sso-configure-profile-token.html).

2. Performing initial SSO authentication:

    ```bash
    aws sso login --profile <PROFILE>
    ```

3. Adjust the `provider` section by substituting the corresponding profile name:

    ```json
    provider "aws" {
      region  = "eu-central-1"
      profile = "<PROFILE>"
    }
    ```

### Basic Terraform commands

- Installing auto-completion on shell:

    ```bash
    terraform -install-autocomplete
    cd ~ && . .bashrc && cd -
    ```

- Using help functions, e.g., on the *plan* function:

    ```bash
    terraform -help plan
    ```

- Initialize template after creating a basic `main.tf` file:

    ```bash
    terraform init
    ```

- Run canonical code formatter:

    ```bash
    terraform fmt
    ```

- Execute dry-run:

    ```bash
    terraform plan
    ```

- Deploy infrastructure:

    ```bash
    terraform apply
    ```

- Destroy infrastructure:

    ```bash
    terraform destroy
    ```
