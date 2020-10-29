# unfinished
Feature: Display LBA Page
  
  Background: 
    * url 'https://dc.services.visualstudio.com/v2/track'

    Scenario: Get LBA page
    
    Given path '/v2/track'
      And header content-type = 'application/json'
      And header origin = 'https://hfp-recoveries.azureedge.net'
      And request '{"time":"2020-10-29T11:20:36.457Z","iKey":"44996ec0-47df-40b3-8a89-89c3b98336cd","name":"Microsoft.ApplicationInsights.44996ec047df40b38a8989c3b98336cd.Pageview","tags":{"ai.user.id":"vzF7P","ai.session.id":"G40b6","ai.device.id":"browser","ai.device.type":"Browser","ai.operation.name":"/app/lba-instruction","ai.operation.id":"d16493ce44e241ddb095bc59f5dcfeee","ai.internal.sdkVersion":"javascript:2.5.8","ai.internal.snippet":"-","ai.user.accountId":"ckdikhagl000001l1goh684ne"},"data":{"baseType":"PageviewData","baseData":{"ver":2,"name":"HFPortal - LBA","url":"https://hfp-recoveries.azureedge.net/app/lba-instruction","duration":"00:00:00.000","properties":{"refUri":"https://hfp-recoveries.azureedge.net/"},"measurements":{"duration":0},"id":"d16493ce44e241ddb095bc59f5dcfeee"}}}'
      When method Post
      Then status 200