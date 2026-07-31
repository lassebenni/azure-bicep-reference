# Practice: modularize, nest, and preview

**Primary chapter:** Bicep in practice

You start with a single-file storage account in `main.bicep`. Refactor it:

1. Move the storage account into `modules/storage.bicep` and call it from `main.bicep`.
2. Add a nested blob container under the account (default blob service + `parent:`), for example a `raw` container.
3. Before you deploy changes, run `az deployment group what-if --resource-group "$CLASS_RG" ...` and read the diff.
4. Deploy, then run `what-if` again with no changes and confirm it reports no change.

```bash
export CLASS_RG=rg-hyf-students
az deployment group what-if \
  --resource-group "$CLASS_RG" \
  --template-file main.bicep \
  --parameters storageName=sthyf<yourname>
```

**Success:** module call in `main.bicep`; nested container visible in the portal; second `what-if` shows no change.

Compare: `git diff week-14-practice-exercise-modularize-nest-solution`
