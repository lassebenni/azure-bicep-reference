// main.bicep: practice solution for Exercise 4: module + nested container + @secure() dummy param

param location string = resourceGroup().location
param storageName string
param containerName string = 'raw'

// Dummy unused secret for hygiene practice: pass at deploy time, never commit the value
@secure()
param dbAdminPassword string

module storage 'modules/storage.bicep' = {
  name: 'storageDeploy'
  params: {
    location: location
    storageName: storageName
    containerName: containerName
  }
}

output storageId string = storage.outputs.storageId
