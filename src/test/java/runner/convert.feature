Feature: Convert LBA to Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'
#I have to search cases before I convert

  Scenario: Covert

    Given path '/convert'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"ourReference":"189611/1622","polDetails":{"addressLookupCountry":"GB","address":{"line1":"225 Talbot Road","line2":"Manchester","town":"Manchester","county":"Lancashire","postcode":"M160SP","readonly":true},"streetNumberOrBuildingName":"225","postalCode":"M160SP","matched":true,"policyholderPhone":"87898","policyholderEmail":"random@email.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"ghjnm","accidentCircumstances":"fghjk"}}
    And request payload
    When method Get
    Then status 200

