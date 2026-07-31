# IaC write-up (sample)

This is a **sample** tone and length — write your own experience; do not submit this text as yours.

## What I deployed

I used Bicep to deploy one storage account into the shared class resource group (`rg-hyf-students`), then moved that account into `modules/storage.bicep` and nested a private `raw` blob container under the default blob service. Parameters covered `storageName`, `location` (defaulting to the resource group's region), and an `environment` tag so the same template could represent `dev` and `prod` without a second account.

## Why code beats the portal

Clicking through the portal is fine once. It fails when a teammate needs the same stack, when you forget a setting three weeks later, or when “prod” drifts from “dev” because nobody documented the clicks. The Bicep file is the checklist: reviewable in a PR, repeatable with `az deployment group create`, and previewable with `what-if` before anything changes. Environment differences become parameter values, not a second hand-built resource.

## One thing that surprised me

`what-if` after a no-change redeploy reporting nothing to do made idempotency concrete — the template describes the desired end state, not a script of create steps. Separately, `@secure()` parameters forced the habit of passing dummies only on the CLI so secrets never land in git.

## Optional: evidence links

- Portal → resource group → Deployments: last run `Succeeded`
- Local `az deployment group what-if` showing a tag modify (not a new storage account) when flipping `environment`
