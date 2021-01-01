# The way an API works is through a contract. First there is a request which includes an endpoint, a header and a body
  # The service responds with its own set of headers, body and also a status code
  #Parameters, Output, InterOp, Security, Errors and Data
Feature: Get Third Party Insurers
  Background:
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

  Scenario: Get Third Party Insurers
    
    Given path '/tpis'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    When method GET
    #We are asserting that our request will be successful (200 status code)
    Then status 200
