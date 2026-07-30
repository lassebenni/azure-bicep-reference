// main.bicep: Chapter 3 solution — single-file storage account

// param = input at deploy time
param location string = resourceGroup().location  // default: same region as the resource group
param storageName string                          // required: pass with --parameters storageName=...

// var = value reused inside this file (not passed at deploy time)
var storageKind = 'StorageV2'

// resource = what should exist (type + API version after @)
resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: storageKind
}

// output = value returned after a successful deploy
output storageId string = storage.id
