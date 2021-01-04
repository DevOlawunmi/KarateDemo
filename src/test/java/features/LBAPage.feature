
Feature: Display LBA Page
  
  Background: 
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

    Scenario: Get LBA page
    
    Given path '/app/lba-instruction'
      And header content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      #And param handlerName = 'Ola Ajibola'
     # And param handlerTel = '0161667553767890'
      #And param handlerEmail = 'ola.ajibola@h-f.co.uk'
      #And param overrideHandlerDetails = false
     # And param reference = '28977787'
      #And param bacs = 'Zeus'
      When method get
      Then status 200