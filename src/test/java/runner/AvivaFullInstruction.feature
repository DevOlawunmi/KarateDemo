Feature: Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass
  Scenario: Full Instruction, Comm PH, Outlay >10k, Total loss

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"YT7U6/980897/5","bacs":"Exceed & Gemini"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":true,"pav":12000,"pavLessSalvage":10200,"pavNet":10200,"salvage":1800,"policyExcess":0,"storageAndRecovery":150,"hireCharges":562.77,"miscellaneous":0},"comfirmOutlayOver10K":true,"accidentDate":"12/02/2021","policyholderCommercialName":"GM Ltd","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"totalLoss","outlayAmount":10200,"totalToRecover":10912.77,"customerUIL":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"Bree","lastName":"Dominic"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"broker":{"insurerOrBroker":"Broker","correspondanceBroker":true,"name":"A Certain Broker","telephone":"7866564700","contact":"Ben Sherman","reference":"JGG/UTGJ/90","address":{"line1":"450 Princes Road","town":"Stoke-on-Trent","postcode":"ST4 7DW"}},"tpInsurer":{"litAvoid":true,"name":"Esure","sendDocsByPost":false,"reference":"ESHY/998/U","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":false,"vrn":"OE64BMV","make":"VOLKSWAGEN","model":"CADDY C20 STARTLINE TDI BMT"}},"insVehicle":{"vehicle":{"matched":false,"vrn":"ML68OBA","make":"FORD","model":"ECOSPORT ST-LINE"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"234 Glebedale Road","town":"Stoke-on-Trent","postcode":"ST4 3LT","readonly":true},"streetNumberOrBuildingName":"234","postalCode":"ST4 3LT","matched":true},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":false},"driDetails":{"addressLookupCountry":"GB","address":{"line1":"67 Brandforth Road","town":"Manchester","postcode":"M8 0BH","readonly":true},"driversTitle":"Mr","driversFirstName":"Dan","driversLastName":"Carr","streetNumberOrBuildingName":"67","postalCode":"M8 0BH","matched":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"bfdtgr","accidentCircumstances":"hgjkhukj"},"submitDeclaration":true}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200


  Scenario: Full Instruction, Broker comms,  Non-Fault, Vehicle Repair, Comm PH, Comm TP,

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"76TPNH/OOP","bacs":"Guidewire","gwExposureRef":1},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"excessWaived":false,"repairsGross":2300,"repairsNet":2150,"policyExcess":150,"storageAndRecovery":200,"hireCharges":250,"miscellaneous":0},"comfirmOutlayOver10K":false,"accidentDate":"22/5/2020","policyholderTitle":"Mr","policyholderFirstName":"E","policyholderLastName":"Adam","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":2150,"totalToRecover":2600,"customerUIL":150},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"J","lastName":"James"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"broker":{"insurerOrBroker":"Broker","correspondanceBroker":true,"name":"Fly Brokers","telephone":"66756709","contact":"Ben Johnson","reference":"786/TRR7T/HJ","address":{"line1":"150 Brandforth Road Brandforth Road","town":"Manchester","postcode":"M8 0BH"}},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"AXUIIYY","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":false,"vrn":"EN62SVA","make":"HYUNDAI","model":"I30 ACTIVE"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"300 Brandforth Road Brandforth Road","town":"Manchester","postcode":"M8 0BH","readonly":true},"streetNumberOrBuildingName":"300 Brandforth Road","postalCode":"M8 0BH","matched":true},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"jghfvhg","accidentCircumstances":"jhgvfyuuoi"},"submitDeclaration":true}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200




