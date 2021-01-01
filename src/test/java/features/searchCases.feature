# this test gets and displays all of the handler's cases in a JSON format
Feature: Search cases
  Background:

    * url 'https://hfportaldev.azure-api.net'

  Scenario: Display all of the logged in user's cases
    Given path '/hf-recoveries/searchCases'
    And header Authorization = ''
    When method Get
    Then status 200


# this scenario displays individual cases, variable here is reference number

  Scenario: Search for a specific case using our reference
    Given path '/hf-recoveries/searchCases'
    And param ourReference = '189611/673'
    And header Authorization = ''
    When method Get
    Then status 200


