// main.bicep: practice starter for Exercise 3 (single file; split it into a module + nested container, see EXERCISE.md)

// param = input at deploy time
param location string = resourceGroup().location  // default: same region as the resource group
param storageName string                          // required: pass with --parameters storageName=...

// var = value reused inside this file (not passed at deploy time)
var storageKind = 'StorageV2'

// resource = what should exist (type + API version after @)
resource storage 'Microsoft.Storage/storageAccounts@2026-04-01' = {
  name: storageName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: storageKind
}

// output = value returned after a successful deploy
output storageId string = storage.id
