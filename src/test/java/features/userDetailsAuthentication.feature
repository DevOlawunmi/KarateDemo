Feature: API Authentication

  Background:
    * url 'https://auth.pingone.eu'

    Scenario: Authentication
      
      Given path '/bfc2e611-8a03-48ab-bdd8-8b997ba52560/as/token'
      And form field grant_type = 'authorization_code'
      And form field email = 'ola.ajibola@h-f.co.uk'
      And form field password = '@Fisherman01'
      And form field client_id = 'afebd4a4-27d8-4ef0-ac31-07bc92c0edad'
      And form field redirect_uri = 'https://hfp-recoveries.azureedge.net/auth/redirect'
      And form field code = '0e1fb294-7b3f-4fed-9778-4120fb3a613a'
      When method POST
      Then status 200
      And header X-CSRF-TOKEN = response

      * def accessToken = response.access_token

      Given path '/bfc2e611-8a03-48ab-bdd8-8b997ba52560/as/userinfo'
      And header Authorization = 'Bearer' + accessToken
      And form field email = 'ola.ajibola@h-f.co.uk'
      And form field password = '@Fisherman01'
      And form field sub = '43ed3ac0-a2d5-4940-823a-d9b6455a3dc8'
      When method GET
      Then status 200