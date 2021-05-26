Feature: Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass
  Scenario: Full Instruction, Non-Fault, Vehicle Repair

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"bacs":"Exceed & Gemini","reference":"UYU8/BJV6/556"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"excessWaived":false,"repairsGross":3089.67,"repairsNet":2889.67,"policyExcess":200,"storageAndRecovery":267.88,"hireCharges":250,"miscellaneous":250},"comfirmOutlayOver10K":false,"accidentDateDay":"15","accidentDateMonth":"04","accidentDateYear":"2019","policyholderTitle":"Mrs","policyholderFirstName":"Paige","policyholderLastName":"Halliwell","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"repairs","outlayAmount":2889.67,"totalToRecover":3657.55,"customerUIL":200},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"JC","lastName":"Damme"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"broker":{"insurerOrBroker":"Insurer"},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"AXJUY/990","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"DF64EOB","make":"AUDI","model":"A5 S LINE BLACK EDITION TDI"}},"insVehicle":{"vehicle":{"matched":true,"vrn":"MK64OLE","make":"HONDA","model":"CR-V SR I-DTEC"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"786 Talbot Road","town":"Manchester","postcode":"M16 0SP","readonly":true},"streetNumberOrBuildingName":"786","postalCode":"M16 0SP","matched":true},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"ggfy yb","accidentCircumstances":"fghf htfr uy "}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200


  Scenario: Full Instruction, Broker comms,  Non-Fault, Vehicle Repair, Comm PH, Comm TP,

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = 
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200




