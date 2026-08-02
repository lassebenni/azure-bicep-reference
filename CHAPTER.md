# Chapter 4 starter: Bicep in practice

You start from the Chapter 3 finished template: one `main.bicep` with a storage
account in it. Refactor it into a module, nest a container inside the account,
and preview before you apply.

Chapter: **[Bicep in practice](https://www.notion.so/hackyourfuture/Bicep-in-practice-9fc8b2f9aba64c2b962d49bd98e0b47c)**

Each step below names the section that explains it. Read that section first, then
write the code; the chapter has the working snippet for every one.

| # | Do this | Explained in |
|---|---|---|
| 1 | Move the storage account into `modules/storage.bicep` and call it from `main.bicep` with `module` + `params:` | *Modules* |
| 2 | Return `storageId` from the module and read it in `main.bicep` as `storage.outputs.storageId` | *Modules* |
| 3 | Add the nested blob container: a `blobServices` resource named `default` with `parent: storage`, then the container with `parent: blobService` | *Nested child resources* |

| 4 | Deploy it before you add anything else, and confirm `raw` in the portal | *Nested child resources* |
| 5 | Add `@secure() param dbAdminPassword string` and pass a dummy value at deploy time. Never commit a real one. Note what it does **not** protect: a value typed on the command line still lands in your shell history | *Keeping secrets out of templates* |
| 6 | Run `az deployment group what-if` before you apply, and read the diff | *Preview with what-if* |
| 7 | Delete the account when you are done | *Tearing down* |

Two things that surprise people, both covered in the chapter:

- **`what-if` stops saying "no change"** once a container exists. The container and
  blob service always report `~` with `-` property lines underneath. Read the
  storage account line, not the resource count. See *Reading a noisy preview*.
- **`$CLASS_RG` is shared**, so your preview also lists classmates' accounts with
  a `*` (Ignore). Those are not yours and will not change.

## Checking your work

```bash
git diff week-14-ch-4-bicep-solution
```

An empty diff means you match the solution. If you only want the module:

```bash
git diff week-14-ch-4-bicep-solution -- modules/storage.bicep
```
