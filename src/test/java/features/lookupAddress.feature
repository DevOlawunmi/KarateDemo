Feature: Get address details
  Background:
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

  Scenario: Get Address Details

    Given path '/addressLookup'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    And param postalCode = 'WN5 7GA'
    And param countryCode = 'GB'
    When method GET
    Then status 200
