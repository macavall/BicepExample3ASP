param appServicePlanName string
param appServicePlanName1 string
param appServicePlanName2 string
param location string

resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: 'S1' // Standard pricing tier
    capacity: 1
  }
  properties: {
    reserved: true
    hyperV: false
  }
}

resource appServicePlan1 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: appServicePlanName1
  location: location
  sku: {
    name: 'S1' // Standard pricing tier
    capacity: 1
  }
  properties: {
    reserved: true
    hyperV: false
  }
}

resource appServicePlan2 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: appServicePlanName2
  location: location
  sku: {
    name: 'S1' // Standard pricing tier
    capacity: 1
  }
  properties: {
    reserved: true
    hyperV: false
  }
}

output appServicePlanId string = appServicePlan.id
output appServicePlanId1 string = appServicePlan1.id
output appServicePlanId2 string = appServicePlan2.id
