// param = input at deploy time
param location string = resourceGroup().location  // default: same region as the resource group
param storageName string                          // required: pass with --parameters storageName=...

module storage 'modules/storage.bicep' = {
  name: 'storageDeploy'
  params: {
    location: location
    storageName: storageName
  }
}

output storageId string = storage.outputs.storageId
