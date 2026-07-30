# Practice: environment tags (one template, many environments)

**Primary chapters:** Azure Bicep, IaC concepts

Keep **one** storage account. Add an `environment` parameter (`dev` / `prod`) and set a tag on the account, for example `tags: { Environment: environment }`.

1. Deploy with `environment=dev` and your unique `storageName`.
2. Run `az deployment group what-if` with the same `storageName` and `environment=prod`. Expect a tag modification, not a new account.
3. Deploy the `prod` parameter set.

**Success:** one storage account whose `Environment` tag you changed via a parameter.

Compare: `git diff week-14-practice-exercise-env-tags-solution -- main.bicep`
