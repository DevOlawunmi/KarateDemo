Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'
##pass
    Scenario: Submit LBA, Dispute, Total loss

      Given path '/LBA'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"ERHGGTE010FEB","bacs":"ZPC Vlocity"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"pav":2000,"storageAndRecovery":600,"policyExcess":100,"salvage":500,"hireCharges":250,"miscellaneous":50},"comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"K","policyholderLastName":"JS","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"totalLoss","outlayAmount":2300},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"L","lastName":"Zo"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Advantage Insurance Company Ltd","reference":"RVBYTBPO","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK16LOA","make":"NISSAN","model":"QASHQAI N-TEC + DCI"}}}
      And request payload
      * configure readTimeout = 60000
      When method post
      Then status 200



  Scenario: Submit LBA, Non-fault, liability agreed, total loss

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"65677u6","bacs":"ZAC"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":false,"pav":2800,"pavLessSalvage":2400,"salvage":400,"policyExcess":340,"storageAndRecovery":0,"hireCharges":0,"miscellaneous":200},"comfirmOutlayOver10K":false,"accidentDate":"03/04/2021","policyholderTitle":"Mrs","policyholderFirstName":"J","policyholderLastName":"-","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":2400,"totalToRecover":2600,"customerUIL":340},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"007","lastName":"@"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"76I876","ripe":true}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200



  Scenario: Submit LBA, 50/50, dispute, liability agreed, total loss

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload =
    * configure readTimeout = 60000
    When method post
    Then status 200

##pass
  Scenario: Submit LBA, 50/50, dispute, total loss, TPI email known
    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"45679p89889","bacs":"Genz"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":50,"liabilityApportionmentThirdParty":50,"totalLossBreakdown":{"pav":5000,"storageAndRecovery":500,"policyExcess":250,"salvage":2000,"hireCharges":250,"miscellaneous":0},"comfirmOutlayOver10K":false,"policyholderTitle":"Mrs","policyholderFirstName":"D","policyholderLastName":"Disu","liabilityDecision":"Dispute","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":3500,"accidentDate":"2021-02-01T00:00:00.000Z"},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"A","lastName":"AB"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":false,"tpInsurerAddress":{"addressLookupCountry":"GB","address":{"line1":"67 Higher House Close","town":"Oldham","postcode":"OL9 8LP","readonly":true},"streetNumberOrBuildingName":"67","postalCode":"OL9 8LP","matched":true},"name":"Aa Underwriting Insurance Company Ltd","reference":"57890OOOPI","email":"test@insurer.com","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MA69OSE","make":"RENAULT","model":"KANGOO MAXI BNESS LL21 I ZE 33"}}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200




