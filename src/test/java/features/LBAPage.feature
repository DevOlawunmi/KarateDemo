
Feature: Display LBA Page
  
  Background: 
    * url 'https://dc.services.visualstudio.com/v2/track'

    Scenario: Get LBA
    
    #Given path '/app/lba-instruction'
      And header content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      #And header iKey = '44996ec0-47df-40b3-8a89-89c3b98336cd'
    And connectionString:"InstrumentationKey=44996ec0-47df-40b3-8a89-89c3b98336cd"
      * def payload = [{"email": "ola.ajibola@h-f.co.uk"}, {"family_name": "Ajibola"}, {"given_name": "Ola"}, {"handlerTel": "0161667553767890"}, {"overrideHandlerDetails": false}, {"reference": "28977787"}, {"bacs": "Zeus"}]

      #And param handlerName = 'Ola Ajibola'
      #And param handlerTel = '0161667553767890'
      #And param handlerEmail = 'ola.ajibola@h-f.co.uk'
      #And param overrideHandlerDetails = false
      #And param reference = '28977787'
      #And param bacs = 'Zeus'
      And request payload
      When method post
      Then status 200