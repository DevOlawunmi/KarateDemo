Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, Total Loss, Outlay>10k

    #pass 19/04
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload =
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200


#pass 19/04
  Scenario: Full Instruction, Non-fault, Repairs, Outlay<10K
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"UUYFQERW","bacs":"ZAC"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"excessWaived":false,"repairsGross":2800,"repairsNet":2630,"policyExcess":170,"storageAndRecovery":90.25,"hireCharges":100,"miscellaneous":89.11},"comfirmOutlayOver10K":false,"accidentDate":"14/09/2019","policyholderTitle":"Mr","policyholderFirstName":"H","policyholderLastName":"Simpson","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":2630,"totalToRecover":2909.36,"customerUIL":170},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Sean","lastName":"Penn"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{"fileNotes":"ihjgyhft"},"broker":{"insurerOrBroker":"Broker","correspondanceBroker":false},"tpInsurer":{"litAvoid":true,"name":"AXA ","sendDocsByPost":false,"reference":"AXTG8776","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":false,"vrn":"PK70OLA","make":"RENAULT","model":"CAPTUR S EDITION E-TECH PHEV A"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"564 Kingston Avenue","town":"Oldham","postcode":"OL9 8LF","readonly":true},"streetNumberOrBuildingName":"564","postalCode":"OL9 8LF","matched":true},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"fdss","accidentCircumstances":"uyi uiu7 ui tyrtutr"},"submitDeclaration":true}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200



