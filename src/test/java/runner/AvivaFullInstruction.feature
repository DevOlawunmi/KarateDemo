Feature: Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass #conflict
  Scenario: Full Instruction, Broker comms,  Non-Fault, Vehicle Repair, Comm PH, Comm TP,

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"TETRL/89/0EE","bacs":"Exceed & Gemini"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"excessWaived":false,"repairsGross":2000,"repairsNet":1800,"policyExcess":200,"hireCharges":200,"miscellaneous":200},"comfirmOutlayOver10K":false,"accidentDateDay":"02","accidentDateMonth":"04","accidentDateYear":"2019","policyholderTitle":"Mr","policyholderFirstName":"Sam","policyholderLastName":"Cooke","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"repairs","outlayAmount":1800,"totalToRecover":2200,"customerUIL":200},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Miss","firstName":"Rose","lastName":"Mary"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"broker":{"insurerOrBroker":"Broker","correspondanceBroker":true,"name":"Test Broker","email":"testbroker@broker.com","telephone":"556706555333","contact":"Trey Williams","reference":"TW677DDF","address":{"line1":"119 Glebedale Road","town":"Stoke-on-Trent","postcode":"ST4 3LT"}},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"ASU98765FJ","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK68OLU","make":"RENAULT","model":"KADJAR DYNAMIQUE NAV TCE"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"45 Brandforth Road","town":"Manchester","postcode":"M8 0BH","readonly":true},"streetNumberOrBuildingName":"45","postalCode":"M8 0BH","matched":true,"policyholderPhone":"6756766676","policyholderEmail":"asar@tytr.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Test Location","accidentCircumstances":"Rainy day"}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200


  Scenario: Full Instruction, Broker comms,  Non-Fault, Vehicle Repair, Comm PH, Comm TP,

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"u5768","bacs":"Exceed & Gemini"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"excessWaived":false,"repairsGross":3000,"repairsNet":2800,"policyExcess":200,"hireCharges":200,"miscellaneous":200},"comfirmOutlayOver10K":false,"accidentDateDay":"03","accidentDateMonth":"05","accidentDateYear":"2019","policyholderTitle":"Mr","policyholderFirstName":"S","policyholderLastName":"R","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":2800,"totalToRecover":3200,"customerUIL":200},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"R","lastName":"D"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{"fileNotes":"none"},"broker":{"insurerOrBroker":"Broker","correspondanceBroker":true,"name":"JD Brokers","email":"gghg@juhg.com","telephone":"655686876","contact":"Jamie","reference":"YTUTUTY","address":{"line1":"Flat 89, Webley Court Sten Close","town":"Enfield","postcode":"EN3 6WX"}},"tpInsurer":{"litAvoid":true,"name":"Esure Insurance Limited","reference":"65AHGYO87","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"RO70RHY","make":"MERCEDES-BENZ","model":"GLC 300 AMG LINE DE 4MATIC A"}},"insVehicle":{"vehicle":{"matched":true,"vrn":"MK67OLA","make":"KIA","model":"PICANTO 1"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"7 Brandforth Road Brandforth Road","town":"Manchester","postcode":"M8 0BH","readonly":true},"streetNumberOrBuildingName":"7 Brandforth Road","postalCode":"M8 0BH","matched":true,"policyholderPhone":"5665768098","policyholderEmail":"fdhg@iuiou.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Bolton","accidentCircumstances":"hyguju jkuiyu uikybiu"}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200




