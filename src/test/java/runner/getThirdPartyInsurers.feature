
Feature: Get Third Party Insurers
  Background:
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

  Scenario: Get Third Party Insurers
    
    Given path '/tpis'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    When method GET
    Then status 200
