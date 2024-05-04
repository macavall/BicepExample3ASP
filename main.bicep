param appServicePlanName string = 'testaspname56asp2'
param appServicePlanName1 string = 'testaspname56asp21'
param appServicePlanName2 string = 'testaspname56asp22'
param location string = 'eastus'
param webAppName string = 'testwebappname56webapp2'
param webAppName1 string = 'testwebappname56webapp21'
param webAppName2 string = 'testwebappname56webapp22'

module appServicePlanDeployment 'appServicePlan.bicep' = {
  name: 'appServicePlanDeployment'
  params: {
    appServicePlanName: appServicePlanName
    appServicePlanName1: appServicePlanName1
    appServicePlanName2: appServicePlanName2
    location: location
  }
}

module webAppDeployment 'webAppDeployment.bicep' = {
  name: 'webAppDeployment'
  params: {
    webAppName: webAppName
    webAppName1: webAppName1
    webAppName2: webAppName2
    location: location
    appServicePlanId: appServicePlanDeployment.outputs.appServicePlanId
    appServicePlanId1: appServicePlanDeployment.outputs.appServicePlanId1
    appServicePlanId2: appServicePlanDeployment.outputs.appServicePlanId2
  }
}
