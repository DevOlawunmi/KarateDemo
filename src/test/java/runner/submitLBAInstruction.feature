Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'



  Scenario: Submit LBA Personal PH and TP
    #Payload to be updated. request failed validation
    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"THGGYT546726","bacs":"Zeus"},"claimantAndAccident":{"comfirmOutlayOver10K":false,"accidentDate":"2019-12-22T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"A","policyholderLastName":"D","outlayAmount":5656,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"title":"Mr","firstName":"D","lastName":"F"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"5566","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN60PKF","make":"CITROEN","model":"C4 VTR+ E-HDI S-A"}}}
    And request payload
    When method post
    Then status 200

   Scenario: Submit LBA Commercial PH
    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"180H60ARE426","bacs":"ZAC"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderCommercialName":"First Group PLC","outlayAmount":8000,"liabilityDecision":"Dispute","liabilityApportionment":60},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Sir","firstName":"Dave ","lastName":"Att'gh"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Tesco Bank (ITB)","reference":"TRES5","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK68OBA","make":"VOLKSWAGEN","model":"T-ROC SEL TDI 4MOTION"}}}
    And request payload
     * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Submit LBA Commercial TP

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"709899226","bacs":"Zeus"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderTitle":"Mrs","policyholderFirstName":"TestB","policyholderLastName":"PH","outlayAmount":3434,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","thirdPartyCommercialName":"TestCommercial"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Zurich","reference":"8789O8","ripe":false},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK67BVN","make":"VAUXHALL","model":"ASTRA SRI TURBO"}}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Submit LBA Commercial PH and TP
    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"CO0M007A226","bacs":"ZPC Vlocity"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","comfirmOutlayOver10K":false,"accidentDate":"2020-12-02T00:00:00.000Z","policyholderCommercialName":"Sainsbury's PLC","outlayAmount":5676,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","thirdPartyCommercialName":"Tesco PLC"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Tesco Bank (ITB)","reference":"89P80","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN66PKF","make":"NISSAN","model":"QASHQAI ACENTA DCI"}}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Submit LBA, third party address known
    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"EE002122","bacs":"ZPC Vlocity"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"2020-12-09T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"Kathirkamathasan","policyholderLastName":"Sri-Balakumaran","outlayAmount":8787,"liabilityDecision":"Dispute","liabilityApportionment":78},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","addressLookupCountry":"GB","address":{"line1":"34 New Barn Street","town":"London","postcode":"E13 8JZ","readonly":false},"thirdPartyCommercialName":"Asda PLC","postalCode":"E13 8JZ","matched":true,"email":"asda@test.com"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":true},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"U78788TTY","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK68BVN","make":"LAND ROVER","model":"DISCOVERY HSE TD6 AUTO"}}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

    Scenario: Submit LBA, Dispute, Total loss

      Given path '/LBA'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"ERHS00kGJH","bacs":"ZPC Vlocity"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"pav":2000,"storageAndRecovery":600,"policyExcess":100,"salvage":500,"hireCharges":250,"miscellaneous":50},"comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"K","policyholderLastName":"JS","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"totalLoss","outlayAmount":2300},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"L","lastName":"Zo"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Advantage Insurance Company Ltd","reference":"RVBYTBPO","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK16LOA","make":"NISSAN","model":"QASHQAI N-TEC + DCI"}}}
      And request payload 
      * configure readTimeout = 60000
      When method post
      Then status 200


