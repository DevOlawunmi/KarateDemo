Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, Total Loss, Outlay>10k

    #pass 19/04
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"RFC/DJ/990BP","bacs":"ZPC Vlocity"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":false,"pav":12000,"pavLessSalvage":11000,"pavNet":9900,"salvage":1000,"policyExcess":1100,"storageAndRecovery":0,"hireCharges":0,"miscellaneous":0},"comfirmOutlayOver10K":true,"accidentDateDay":"02","accidentDateMonth":"04","accidentDateYear":"2019","policyholderTitle":"Mr","policyholderFirstName":"Tony","policyholderLastName":"Montana","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":9900,"totalToRecover":11000,"customerUIL":1100},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"Rose","lastName":"Timms"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"QUU/OIOI/900","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MA70OLU","make":"FORD","model":"FOCUS ST-LINE X TDCI"}},"insVehicle":{"vehicle":{"matched":true,"vrn":"YH70DBZ","make":"VOLKSWAGEN","model":"CADDY C20 STARTLINE TDI"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"90 Sten Close","town":"Enfield","postcode":"EN3 6WX","readonly":true},"streetNumberOrBuildingName":"90","postalCode":"EN3 6WX","matched":true,"policyholderPhone":"796776634","policyholderEmail":"try_ii@yy.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Somewhere in Manchester;oikij","accidentCircumstances":"tttui uiu uy yyy  y"}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200


#pass 19/04
  Scenario: Full Instruction, Dispute, Total Loss, Outlay<10K
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"RFC/D088JBP","bacs":"ZPC Vlocity"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":false,"pav":12000,"pavLessSalvage":11000,"pavNet":9900,"salvage":1000,"policyExcess":1100,"storageAndRecovery":0,"hireCharges":0,"miscellaneous":0},"comfirmOutlayOver10K":true,"accidentDateDay":"02","accidentDateMonth":"04","accidentDateYear":"2019","policyholderTitle":"Mr","policyholderFirstName":"Tony","policyholderLastName":"Montana","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":9900,"totalToRecover":9900,"customerUIL":1100},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"Rose","lastName":"Timms"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"QUU/OIOI/900","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MA70OLU","make":"FORD","model":"FOCUS ST-LINE X TDCI"}},"insVehicle":{"vehicle":{"matched":true,"vrn":"YH70DBZ","make":"VOLKSWAGEN","model":"CADDY C20 STARTLINE TDI"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"90 Sten Close","town":"Enfield","postcode":"EN3 6WX","readonly":true},"streetNumberOrBuildingName":"90","postalCode":"EN3 6WX","matched":true,"policyholderPhone":"796776634","policyholderEmail":"try_ii@yy.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Simiuiul;oikij","accidentCircumstances":"tttui uiu uy yyy  y"}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200



