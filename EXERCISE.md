# Practice: deploy a single resource

**Primary chapter:** Azure Bicep

Finish `main.bicep` so it creates one storage account (`param`, `var`, `resource`, `output`), then deploy it into the shared class resource group.

```bash
export CLASS_RG=rg-hyf-students   # replace if your teacher gave a different name
az login
# unique name: lowercase, 3–24 chars
az deployment group create \
  --resource-group "$CLASS_RG" \
  --template-file main.bicep \
  --parameters storageName=sthyf<yourname>
```

Confirm the CLI reports `Succeeded`, then find the deployment in the portal (resource group → Deployments).

**Success:** a storage account you created from a text file, not a portal form.

Compare: `git diff week-14-practice-exercise-deploy-storage-solution -- main.bicep`
