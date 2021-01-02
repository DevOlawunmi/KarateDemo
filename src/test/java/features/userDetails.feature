# This test sends an API call to validate the details of the logged in \user
  # the variable here is the JWT
Feature: User Details

  Background:
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

  Scenario: Get user details

    Given path '/userinfo'
 And header Content-type = 'application/json'
 And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
 When method GET
 Then status 200





