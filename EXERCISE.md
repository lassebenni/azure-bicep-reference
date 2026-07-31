# Practice solution: keep a secret out of the file

`@secure() param dbAdminPassword string` is declared and unused. Pass a dummy at deploy/what-if time; never commit the value.

Compare after attempting:

```bash
git diff week-14-practice-exercise-secure-param -- main.bicep
```
