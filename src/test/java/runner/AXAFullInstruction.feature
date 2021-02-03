Feature: Search cases
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, AXA, Non-Fault, Vehicle Repair, Comm PH, Comm TP,

Given path '/full'
And header Content-type = 'application/json'
And header ocp-apim-subscription-key = '9365f10d32b74e78ace27cb278e96ec2'
* def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"UYIY8UO8UO"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"pav":8000,"storageAndRecovery":200,"policyExcess":200,"salvage":2000,"hireCharges":400,"miscellaneous":200},"comfirmOutlayOver10K":false,"accidentDate":"2020-12-02T00:00:00.000Z","policyholderTitle":"Miss","policyholderFirstName":"Tina","policyholderLastName":"Turner","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":6600},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Harry","lastName":"Yo"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"U766OP09[0","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN67OLE","make":"VOLKSWAGEN","model":"GOLF R TSI S-A"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"23 Chatsworth Place","town":"Stoke-on-Trent","postcode":"ST3 7DW","readonly":true},"streetNumberOrBuildingName":"23","postalCode":"ST3 7DW","matched":true,"policyholderPhone":"6567687i790009","policyholderEmail":"srdgfybt@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"gyhjhgjh ","accidentCircumstances":"uyiuyinu uikuo kiuoli kuoi "}}
    And request payload 
* configure readTimeout = 70000
When method post
Then status 200

  Scenario: Full Instruction, AXA, Dispute, Vehicle Repair, Private PH and TP, both driving

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '9365f10d32b74e78ace27cb278e96ec2'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"HTJKIULOJ"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":40,"liabilityApportionmentThirdParty":60,"repairBreakdown":{"repairs":1360.95,"policyExcess":200,"hireCharges":236,"miscellaneous":50},"comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"H","policyholderLastName":"F","liabilityDecision":"Dispute","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":1446.95,"outlayTotalSeekRecovery":868.17},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Harry","lastName":"Flint"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"YTU768IL","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"OE67LOA","make":"FORD","model":"KUGA ZETEC 4X4 AUTO"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"236 Sten Close","town":"Enfield","postcode":"EN3 6WX","readonly":true},"streetNumberOrBuildingName":"236","postalCode":"EN3 6WX","matched":true,"policyholderPhone":"676878987","policyholderEmail":"safjn@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Accident Location","accidentCircumstances":"Snowy kinda day"}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200