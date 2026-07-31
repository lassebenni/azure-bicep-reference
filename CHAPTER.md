# Chapter 4 starter: Bicep in practice

You start from the Chapter 3 finished template. Refactor it:

1. Move the storage account into `modules/storage.bicep` and call it from `main.bicep`.
2. Add a nested blob container (`parent:` + default blob service).
3. Add `@secure() param dbAdminPassword string` (pass a dummy at deploy/what-if time; never commit a secret).
4. Run `az deployment group what-if` before you apply changes.

Curriculum: [Bicep in practice](https://github.com/lassebenni/hyf-datatrack/blob/main/Data%20Track/Week%2014/week_14__4_bicep_in_practice.md)

When stuck: `git diff week-14-ch-4-bicep-solution`
