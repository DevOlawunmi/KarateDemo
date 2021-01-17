
Feature: Display LBA Page
  
  Background: 
    * url 'https://dc.services.visualstudio.com/v2/track'

    Scenario: Get LBA
    
    #Given path '/app/lba-instruction'
      And header content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
   * def payload =  [{"time":"2021-01-08T14:35:45.338Z","iKey":"44996ec0-47df-40b3-8a89-89c3b98336cd","name":"Microsoft.ApplicationInsights.44996ec047df40b38a8989c3b98336cd.Pageview","tags":{"ai.user.id":"OCude","ai.session.id":"U5fui","ai.device.id":"browser","ai.device.type":"Browser","ai.operation.name":"/app/full-instruction","ai.operation.id":"8fcde07a4111404583e5708204b7a29c","ai.internal.sdkVersion":"javascript:2.5.8","ai.internal.snippet":"-","ai.user.accountId":""},"data":{"baseType":"PageviewData","baseData":{"ver":2,"name":"HFPortal - Full Instruction","url":"https://hfp-recoveries.azureedge.net/app/full-instruction","duration":"00:00:00.000","properties":{"refUri":"https://hfp-recoveries.azureedge.net/"},"measurements":{"duration":0},"id":"8fcde07a4111404583e5708204b7a29c"}}}]
      And request payload
      When method post
      Then status 200