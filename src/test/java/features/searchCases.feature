# this test gets and displays all of the handler's cases in a JSON format
Feature: Search cases
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

  Scenario: Display all of the logged in user's cases
    Given path '/searchCases'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    When method Get
    Then status 200


# this scenario displays individual cases, variable here is reference number

  Scenario: Search for a specific case using our reference
    Given path '/searchCases'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    And param ourReference = '189611/673'
    When method Get
    Then status 200


