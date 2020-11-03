# We make calls to DVLA API, this test gets details of a vehicle using the VRN
Feature: Get vehicle details
  Background:
    * url 'https://hfportaldev.azure-api.net'

  Scenario: Get Vehicle Details

    Given path '/hf-recoveries/vrnlookup'
    And header Content-type = 'application/json'
    And header Authorization = 'Bearer '
    And request '{"vrn": "VN17PKF"}'
    When method POST
    Then status 200