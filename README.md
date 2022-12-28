# Terraform Workshop Series

## 01 - Introduction
### Goal
Getting familiar with Terraform basics by provisioning an Azure VM instance and using SSH to execute commands to bootstrap it
### Learnings
- Terraform project structure
- Terraform configuration block
- Providers
- Terraform backend and state management
- HCL (Terraform's DSL)
- Resources
- Data sources
- Dependency between resources
- Resource arguments and attributes
- Variables
- Outputs
- Remote-exec provisioner (SSH)

## 02 - Modules
### Goal
Getting familiar with creating a Terraform project with multiple modules, for better isolation and reusability.
### Learnings
- Creating a module
- Calling modules
- Passing arguments to and retrieving outputs from modules
- Passing providers to modules

## 03 - Microstacks
### Goal
Getting familiar with the ability to maintain large scale infrastructure as separate stacks
### Learnings
- Splitting infrastructure project into multiple layers
- Dynamically retrieve outputs from an existing stack to provision a higher level stack 
