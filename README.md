# azure-bicep-reference (Week 14)

Code-along and practice branches for HackYourFuture Data Track **Week 14** (Azure Bicep).

This is **not** the graded assignment. Submit work in [c55-data-week-14](https://github.com/HackYourAssignment/c55-data-week-14).

## Quick start

```bash
git clone https://github.com/lassebenni/azure-bicep-reference.git
cd azure-bicep-reference
az login
export CLASS_RG=rg-hyf-students   # shared class resource group
```

Use a unique storage name (`sthyf` + your handle, lowercase, 3–24 chars). Confirm `az account show` is the shared HYF subscription.

Deploy pattern:

```bash
az deployment group create \
  --resource-group "$CLASS_RG" \
  --template-file main.bicep \
  --parameters storageName=sthyf<yourname>
```

Validate without deploying: `az bicep build --file main.bicep`

## Chapter code-along branches

| Chapter | Work on | Compare against |
| --- | --- | --- |
| Ch3: Azure Bicep | [`week-14-ch-3-bicep`](https://github.com/lassebenni/azure-bicep-reference/tree/week-14-ch-3-bicep) | [`week-14-ch-3-bicep-solution`](https://github.com/lassebenni/azure-bicep-reference/tree/week-14-ch-3-bicep-solution) |
| Ch4: Bicep in practice | [`week-14-ch-4-bicep`](https://github.com/lassebenni/azure-bicep-reference/tree/week-14-ch-4-bicep) | [`week-14-ch-4-bicep-solution`](https://github.com/lassebenni/azure-bicep-reference/tree/week-14-ch-4-bicep-solution) |

```bash
git switch week-14-ch-3-bicep
# ... follow CHAPTER.md, then when stuck:
git diff week-14-ch-3-bicep-solution -- main.bicep
```

## Practice exercise branches (optional)

| Practice | Work on | Compare against |
| --- | --- | --- |
| Env tags (one template, many environments) | [`week-14-practice-exercise-env-tags`](https://github.com/lassebenni/azure-bicep-reference/tree/week-14-practice-exercise-env-tags) | [`week-14-practice-exercise-env-tags-solution`](https://github.com/lassebenni/azure-bicep-reference/tree/week-14-practice-exercise-env-tags-solution) |

Each practice branch has an `EXERCISE.md` at the repo root.

## Teardown

```bash
az resource delete \
  --resource-group "$CLASS_RG" \
  --name sthyf<yourname> \
  --resource-type Microsoft.Storage/storageAccounts
```

Curriculum: [Week 14 in datatrack](https://github.com/lassebenni/hyf-datatrack/tree/main/Data%20Track/Week%2014).
