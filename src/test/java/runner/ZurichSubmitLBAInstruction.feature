Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'
#PASS
    Scenario: Submit LBA, Dispute, Vehicle repairs

      Given path '/LBA'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"TGTRPOYY7U","bacs":"Zeus"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"excessWaived":false,"repairsGross":2000,"repairsNet":1880,"policyExcess":120,"hireCharges":80,"miscellaneous":100},"comfirmOutlayOver10K":false,"accidentDateDay":"28","accidentDateMonth":"12","accidentDateYear":"2019","policyholderCommercialName":"Zuma Ent","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"repairs","outlayAmount":1880,"totalToRecover":2060,"customerUIL":120},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Miss","firstName":"Honey","lastName":"Day"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"TT/09/UYT/MN","ripe":false},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"NX12ORS","make":"FORD","model":"TRANSIT 115 T350M RWD"}}}
      And request payload
      * configure readTimeout = 60000
      When method post
      Then status 200


##PASS
  Scenario: Submit LBA, Non-fault, liability agreed, total loss

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = read('ZurichLBATotalLoss.json')
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200
    And print response
   # And match response contains {success: 'Our Reference: 189611/1835'}




  Scenario: Submit LBA, No TPI

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"bacs":"ZAC","reference":"TNOTPI/67"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDateDay":"03","accidentDateMonth":"12","accidentDateYear":"2018","policyholderTitle":"Ms","policyholderFirstName":"Sally","policyholderLastName":"James","outlayAmount":9000},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","addressLookupCountry":"GB","address":{"line1":"89 Webley Court Sten Close","town":"Enfield","postcode":"EN3 6WX","readonly":true},"title":"Mr","firstName":"Sam","lastName":"Coker","postalCode":"EN3 6WX","streetNumberOrBuildingName":"89 Webley Court","email":"tyjtvv@rr.com","matched":true},"tpVehicleInsured":{"isTPVInsured":false},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"CV60OLA","make":"VAUXHALL","model":"CORSA ENERGY ECOFLEX"}}}
    And request payload
    * configure readTimeout = 60000
    When method POST
    Then status 200




