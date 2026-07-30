// Practice starter: add environment param + Environment tag (see EXERCISE.md)

param location string = resourceGroup().location
param storageName string
// TODO: param environment string  (e.g. 'dev' or 'prod')
// TODO: set tags: { Environment: environment } on the storage resource

var storageKind = 'StorageV2'

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: storageKind
  // TODO: tags: { Environment: environment }
}

output storageId string = storage.id
