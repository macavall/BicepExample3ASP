param appServicePlanName string
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

output appServicePlanId string = appServicePlan.id
