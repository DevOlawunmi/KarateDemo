Feature: Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass
  Scenario: Full Instruction, AXA, Non-Fault, Vehicle Repair, Comm PH, Comm TP,

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload =
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200