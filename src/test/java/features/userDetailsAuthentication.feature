Feature: API Authentication

  Background:
    * url 'https://auth.pingone.eu'

    Scenario: Authentication test
      
      Given path '/bfc2e611-8a03-48ab-bdd8-8b997ba52560/as/token'
      And form field grant_type = 'authorization_code'
      And form field client_id = 'afebd4a4-27d8-4ef0-ac31-07bc92c0edad'
      And form field redirect_uri = 'https://hfp-recoveries.azureedge.net/auth/redirect'
      And form field code = '0e5c8161-f9b1-43a2-a616-4d9a13118f3a'
      And form field code_verifier = 'rGYsg8zQLnCTtCMkaZb1hET6CcLsEZc7ykDtiAOVr9Qp7yxf28FiClEQz81HdWBg49T4uSZsMqnWpraH3laxceMqI9LABU9A2LZfqyQ6VSsJmRKAkp7iU6zbFjg18C4z'
      When method POST
      Then status 200