Feature: Auth

  Background:
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

    Scenario: Verify the user details using OAuth2 Implicit grant type
      
      Given path '/as/token'
      And form field grant_type = 'client_credentials'
      And form field client_id = '38880762-813f-4789-8b6e-53ddadc189ae'
      And form field client_secret = 'Gywo5l3FdVDCtUeXJsl6uaD8dFA3tlKxH6LZ1sopZYa.dl-HQWjiQ12Ie8ZFC~SV'
      When method POST
      Then status 401
      * print response
      And def tokenType = response.token_type
      * def accessToken = response.access_token
      * header Authorization = 'Bearer' + token

