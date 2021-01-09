# This test sends an API call to validate the details of the logged in \user
  # the variable here is the JWT
Feature: User Details

  Background:
    * url 'https://auth.pingone.eu/bfc2e611-8a03-48ab-bdd8-8b997ba52560'

  Scenario: Get user details

    Given path '/as/token'
 And header Content-type = 'application/json'
 And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'

   When method GET
 Then status 200





