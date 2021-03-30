# We make calls to DVLA API, this test gets details of a vehicle using the VRN
Feature: Get vehicle details
  Background:
    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

  Scenario: Get Vehicle Details

    Given path '/vrnlookup'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    And request '{"vrn": "MK68OLE"}'
    When method POST
    Then status 200
     # the expected output has been saved on file result.json. this file will be read by the read function
    * def expectedOutput = read('vehicleTestData.json')
     #compare expected and actual response, where $ = response
    And match $ == expectedOutput




