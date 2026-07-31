// main.bicep — Practice starter: module + nest; add @secure (see EXERCISE.md)

param location string = resourceGroup().location
param storageName string
param containerName string = 'raw'

// TODO: add @secure() param dbAdminPassword string  (unused dummy; pass at deploy time, never commit)

module storage 'modules/storage.bicep' = {
  name: 'storageDeploy'
  params: {
    location: location
    storageName: storageName
    containerName: containerName
  }
}

output storageId string = storage.outputs.storageId
