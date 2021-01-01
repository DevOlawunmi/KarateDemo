
Feature: Display LBA Page
  
  Background: 
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

    Scenario: Get LBA page
    
    Given path '/lba'
      And header content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      When method post
      Then status 200