Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: FLV Dispute, Dispute, Commercial PH, private TP, Vehicle repairs, Outlay<10k

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    * def payload =
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200

  Scenario: Full Instruction, Non-fault, Total loss, Outlay>10k

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    * def payload =
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200






