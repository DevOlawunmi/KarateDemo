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

  Scenario: Full Instruction, AXA, Dispute,Outlay <10k, Vehicle Repair, Private PH and TP, both driving

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '9365f10d32b74e78ace27cb278e96ec2'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"htttutpou"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"repairs":8000,"policyExcess":200,"hireCharges":200,"miscellaneous":1000},"comfirmOutlayOver10K":false,"accidentDate":"2020-11-03T00:00:00.000Z","policyholderTitle":"Ms","policyholderFirstName":"S","policyholderLastName":"Twain","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"repairs","outlayAmount":9000},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Sir","firstName":"J","lastName":"P"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{"fileNotes":"htjyiy"},"tpInsurer":{"litAvoid":true,"name":"Advantage Insurance Company Ltd","reference":"U67IYOIIP","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"ML66EKU","make":"CITROEN","model":"NEMO 660 ENTERPRISE HDI"}},"polDetails":{"addressLookupCountry":"GB","address":{"readonly":false,"line1":"189 Higher House Close","line2":"Chadderton","town":"OLDHAM","county":"County (optional)","postcode":"OL9 8LP"},"streetNumberOrBuildingName":"66","postalCode":"M16 OSP","matched":true,"policyholderPhone":"07799888989941","policyholderEmail":"argetr@ll7tt.co.uk"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"sdfghjk","accidentCircumstances":"dfgh dfgh fghj dfgh rtyhuj sdfgh"}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200