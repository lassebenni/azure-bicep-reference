// Practice solution: one storage account, environment via parameter + tag

param location string = resourceGroup().location
param storageName string
param environment string  // e.g. 'dev' or 'prod'

var storageKind = 'StorageV2'

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: storageKind
  tags: {
    Environment: environment
  }
}

output storageId string = storage.id
