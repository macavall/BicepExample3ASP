param webAppName string
param webAppName1 string
param webAppName2 string
param location string
param appServicePlanId string
param appServicePlanId1 string
param appServicePlanId2 string

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

resource webApp2 'Microsoft.Web/sites@2020-06-01' = {
  name: webAppName1
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlanId1
    siteConfig: {
      appSettings: []
    }
  }
}

resource webApp3 'Microsoft.Web/sites@2020-06-01' = {
  name: webAppName2
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlanId2
    siteConfig: {
      appSettings: []
    }
  }
}
