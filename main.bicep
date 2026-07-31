// main.bicep — Chapter 4 solution: thin entry that calls the storage module

param location string = resourceGroup().location
param storageName string
param containerName string = 'raw'

module storage 'modules/storage.bicep' = {
  name: 'storageDeploy'
  params: {
    location: location
    storageName: storageName
    containerName: containerName
  }
}

output storageId string = storage.outputs.storageId
