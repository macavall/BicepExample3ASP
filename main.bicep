var appServicePlanName = 'testaspname56asp21'
param location string = 'eastus'
param webAppName string = 'testwebappname56webapp21'

module appServicePlanDeployment1 'appServicePlan.bicep' = {
  name: 'appServicePlanDeployment1'
  params: {
    appServicePlanName: '${appServicePlanName}${substring(uniqueString(subscription().id),0, 4)}'
    location: location
  }
}

module appServicePlanDeployment2 'appServicePlan.bicep' = {
  name: 'appServicePlanDeployment2'
  params: {
    appServicePlanName: '${appServicePlanName}${substring(uniqueString(subscription().id),0, 4)}'
    location: location
  }
}

module appServicePlanDeployment3 'appServicePlan.bicep' = {
  name: 'appServicePlanDeployment3'
  params: {
    appServicePlanName: '${appServicePlanName}${substring(uniqueString(subscription().id),0, 4)}'
    location: location
  }
}

module webAppDeployment1 'webAppDeployment.bicep' = {
  name: 'webAppDeployment1'
  params: {
    webAppName: '${webAppName}${substring(uniqueString(subscription().id),0, 4)}'
    location: location
    appServicePlanId: appServicePlanDeployment1.outputs.appServicePlanId
  }
}

module webAppDeployment2 'webAppDeployment.bicep' = {
  name: 'webAppDeployment2'
  params: {
    webAppName: '${webAppName}${substring(uniqueString(subscription().id),0, 4)}'
    location: location
    appServicePlanId: appServicePlanDeployment1.outputs.appServicePlanId
  }
}

module webAppDeployment3 'webAppDeployment.bicep' = {
  name: 'webAppDeployment3'
  params: {
    webAppName: '${webAppName}${substring(uniqueString(subscription().id),0, 4)}'
    location: location
    appServicePlanId: appServicePlanDeployment1.outputs.appServicePlanId
  }
}
