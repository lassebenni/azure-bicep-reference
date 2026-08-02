# Chapter 3 starter: Azure Bicep

`main.bicep` is a stub with five TODOs. Fill them in, then deploy into
`$CLASS_RG`.

Chapter: **[Azure Bicep](https://www.notion.so/hackyourfuture/Azure-Bicep-e35ad41c71804c8a8d3b4b0669d5abe7)**

Each TODO is one Bicep idea. Read the section, then write the line.

| # | Do this | Explained in |
|---|---|---|
| 1 | `param location string = resourceGroup().location` | *Anatomy of a Bicep file* |
| 2 | `param storageName string`, required, no default | *Anatomy of a Bicep file* |
| 3 | `var storageKind = 'StorageV2'` | *Anatomy of a Bicep file* |
| 4 | the `resource` block, type + API version after `@` | *Anatomy of a Bicep file* |
| 5 | `output storageId string = storage.id` | *Anatomy of a Bicep file* |
| 6 | deploy with `az deployment group create` | *Logging in and deploying* |

Wondering where names like `resourceGroup()` come from, or how to find which
properties a resource takes? That is *Where those names come from* in the same
chapter. Short version: nothing is imported, and the VS Code Bicep extension
completes types and properties from the same schema the docs are built from.

## Checking your work

```bash
git diff week-14-ch-3-bicep-solution -- main.bicep
```

An empty diff means you match the solution.
