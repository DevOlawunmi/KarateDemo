Feature: Implicit Auth

  Background:
    * url 'https://auth.pingone.eu/bfc2e611-8a03-48ab-bdd8-8b997ba52560'

    Scenario: Verify the user details using OAuth2 Implicit grant type
      
      Given path '/as/token'
      And form field grant_type = 'client_credentials'
      And form field client_id = '38880762-813f-4789-8b6e-53ddadc189ae'
      And form field client_secret = 'Gywo5l3FdVDCtUeXJsl6uaD8dFA3tlKxH6LZ1sopZYa.dl-HQWjiQ12Ie8ZFC~SV'
      When method POST
      Then status 401
      * print response
      * def accessToken = response.access_token
      * header Authorization = 'Bearer' + token

