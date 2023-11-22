# A simple base of docker infrastructure

Revision: November 2023

**keywords**: software-architecture, IaC, Terraform, AWS

*contacts*: Markus von Steht

## Description

Getting started with Terraform on AWS with SSO

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
