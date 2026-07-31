# Practice: keep a secret out of the file

**Primary chapter:** Bicep in practice

You already have a module + nested container. Add secret hygiene:

1. Add `@secure() param dbAdminPassword string` to `main.bicep` (a dummy unused value is fine; nothing here needs a real secret).
2. Pass it at what-if / deploy time without writing the value into any committed file.
3. Confirm the `.bicep` you would push to git contains no literal secret string.

```bash
export CLASS_RG=rg-hyf-students
# pass a dummy only on the CLI: do not put it in a committed parameters file
az deployment group what-if \
  --resource-group "$CLASS_RG" \
  --template-file main.bicep \
  --parameters storageName=sthyf<yourname> dbAdminPassword=DummyNotARealSecret123!
```

**Success:** `@secure()` in the template; no secret string in any file you would commit.

Compare: `git diff week-14-practice-exercise-secure-param-solution -- main.bicep`
