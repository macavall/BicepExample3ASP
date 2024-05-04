param webAppName string
param location string
param appServicePlanId string

resource webApp 'Microsoft.Web/sites@2020-06-01' = {
  name: webAppName
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlanId
    siteConfig: {
      appSettings: []
    }
  }
}
