Feature: Get client

  Background:
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

    Scenario: Get client
      
      Given path '/client'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
     # And form field grant_type = 'client_credentials'
      #And form field client_id = '38880762-813f-4789-8b6e-53ddadc189ae'
     # And form field client_secret = 'Gywo5l3FdVDCtUeXJsl6uaD8dFA3tlKxH6LZ1sopZYa.dl-HQWjiQ12Ie8ZFC~SV'
      When method get
      Then status 200

