
Feature: Search cases
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


Scenario: Full Instruction, Tesco, Dispute, Total Loss, Private PH and TP, PH and TP driving

Given path '/full'
And header Content-type = 'application/json'
And header ocp-apim-subscription-key = '54d0bbc1045345caa94ab2cf7f2af69b'
* def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"U7676HCA"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":40,"liabilityApportionmentThirdParty":60,"totalLossBreakdown":{"pav":7000,"storageAndRecovery":500,"policyExcess":250,"salvage":2500,"hireCharges":600,"miscellaneous":0},"comfirmOutlayOver10K":false,"accidentDate":"2020-12-10T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"Claudia","policyholderLastName":"Sugar","liabilityDecision":"Dispute","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":5350,"outlayTotalSeekRecovery":3210},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Ms","firstName":"Mia","lastName":"Harris"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"6779YGYHGGKJ","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"OE68OLA","make":"JAGUAR","model":"E-PACE R-DYNAMIC HSE D AWD A"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"345 Talbot Road","town":"Manchester","postcode":"M16 0SP","readonly":true},"streetNumberOrBuildingName":"345","postalCode":"M16 0SP","matched":true,"policyholderPhone":"9898989","policyholderEmail":"fdfft@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"iiykio;i il","accidentCircumstances":"hgdfghj fjk yui nm,ki gfdfg "}}
And request payload
* configure readTimeout = 70000
When method post
Then status 200