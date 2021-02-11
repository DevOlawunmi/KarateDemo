Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

    Scenario: Submit LBA, Dispute, Total loss

      Given path '/LBA'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"ERHGGTEST10FEB","bacs":"ZPC Vlocity"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"pav":2000,"storageAndRecovery":600,"policyExcess":100,"salvage":500,"hireCharges":250,"miscellaneous":50},"comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"K","policyholderLastName":"JS","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"totalLoss","outlayAmount":2300},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"L","lastName":"Zo"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Advantage Insurance Company Ltd","reference":"RVBYTBPO","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK16LOA","make":"NISSAN","model":"QASHQAI N-TEC + DCI"}}}
      And request payload
      * configure readTimeout = 60000
      When method post
      Then status 200

  Scenario: Submit LBA, Non-fault, liability agreed, repairs

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"5RY88TUBYJ","bacs":"Genz"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"repairs":600,"policyExcess":100,"hireCharges":400,"miscellaneous":100},"comfirmOutlayOver10K":false,"accidentDate":"2020-12-01T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"Sam","policyholderLastName":"Cooke","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":1000},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Miss","firstName":"Camille","lastName":"Day"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"UT67U6876","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VE10XVZ","make":"VOLKSWAGEN","model":"GOLF S TDI"}}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Submit LBA, 50/50, dispute, liability agreed, total loss

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"TEST1002","bacs":"IMACS"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":50,"liabilityApportionmentThirdParty":50,"totalLossBreakdown":{"pav":9000,"storageAndRecovery":1000,"policyExcess":500,"salvage":500,"hireCharges":800,"miscellaneous":200},"comfirmOutlayOver10K":false,"accidentDate":"2020-12-16T00:00:00.000Z","policyholderTitle":"Earl","policyholderFirstName":"Adam","policyholderLastName":"Jones","liabilityDecision":"Dispute","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":10000},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","thirdPartyCommercialName":"BusyBees Ltd"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Advantage Insurance Company Ltd","reference":"6777889988","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN68OLE","make":"TRIUMPH","model":"BONNEVILLE STREET TWIN"}}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200




