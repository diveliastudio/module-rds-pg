# AWS RDS Terraform module

## Usage

```hcl
provider "aws" {
  region = "us-east-2"
  profile = "project"
}

module "ec2_instance" {
  ...
}

module "rds_pg" {
  source  = "github.com/diveliastudio/module-rds-pg"
  project_name = "project"
  project_environment = "develop"
  initial_db_name = "db_initial"
  source_security_group_id = module.ec2_instance.security_group_id # module.<name_module_ec2>.<output_security_group_id>
}
```
**Note:** The value `source_security_group_id` will be the value of the security `group id` of the EC2 instance that will be obtained as `output`.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project_name | Project's name | `string` | `""` | yes |
| project_environment | Project environment | `string` | `""` | yes |
| initial_db_name | Name of the initial database to use | `string` | `""` | yes |
| source_security_group_id | Security group ID to allow access | `string` | `""` | yes |
| engine_version | PostgreSQL version | `string` | `"12.9"` | no |
| instance_class | DB Instance Type | `string` | `"db.t2.micro"` | no |
| length_password | Number of characters for the password | `number` | `16` | no |

**Note:** PostgreSQL version `12.9` and instance `db.t2.micro` are within the AWS Free Tier.

## Resources that return

| Extension | Folder | Description |
|------|-------------|:--------:|
| address.txt | ./rds | Text file with the hostname of the RDS instance |
| username.txt | ./rds | Text file with master user |
| password.txt | ./rds | Text file with the password |