
Feature: Display LBA Page
  
  Background: 
    * url 'https://dc.services.visualstudio.com/v2/track'

    Scenario: Get LBA page
    
    #Given path '/app/lba-instruction'
      And header content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      When request {"iKey":"44996ec0-47df-40b3-8a89-89c3b98336cd", "handlerName":"Ola Ajibola", "handlerTel":"0161667553767890", "handlerEmail": "ola.ajibola@h-f.co.uk", "overrideHandlerDetails": false , "reference" : "28977787", "bacs": "Zeus"}
      #And param handlerName = 'Ola Ajibola'
      #And param handlerTel = '0161667553767890'
      #And param handlerEmail = 'ola.ajibola@h-f.co.uk'
      #And param overrideHandlerDetails = false
      #And param reference = '28977787'
      #And param bacs = 'Zeus'
      And method post
      Then status 200