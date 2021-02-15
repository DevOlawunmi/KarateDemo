Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, LV Dispute, Dispute, Commercial PH, private TP

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"Y058069Y022","bacs":"LV Dispute"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","comfirmOutlayOver10K":false,"accidentDate":"2020-12-01T00:00:00.000Z","policyholderCommercialName":"Bee Ltd","outlayAmount":4465.98,"liabilityDecision":"Dispute","liabilityApportionment":40},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Boola","lastName":"Seni"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Esure Insurance Limited","reference":"6TYT6U","ripe":true},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"440 Sten Close","town":"Enfield","postcode":"EN3 6WX","readonly":true},"streetNumberOrBuildingName":"440","postalCode":"EN3 6WX","matched":true,"policyholderPhone":"56767626","policyholderEmail":"dtfftf@email.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":false},"driDetails":{"addressLookupCountry":"GB","address":{"line1":"113 Lisetta Avenue","town":"Oldham","postcode":"OL4 1BY","readonly":true},"driversTitle":"Mrs","driversFirstName":"Sadie","driversLastName":"Golden","streetNumberOrBuildingName":"113","postalCode":"OL4 1BY","matched":true,"driverPhone":"67U689O","driverEmail":"agftft@exam.com"},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"5hbkj","accidentCircumstances":"kjhkiji jhikjik mjhukuh"}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200

  Scenario: Full Instruction, LV Non-fault, private PH, private TP

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"YR6U1YI4","bacs":"LV Non-Fault"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"repairs":1000,"policyExcess":100,"hireCharges":100,"miscellaneous":100},"comfirmOutlayOver10K":false,"accidentDate":"2021-01-02T00:00:00.000Z","policyholderTitle":"Mrs","policyholderFirstName":"P","policyholderLastName":"F","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":1100},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"J","lastName":"P"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"tpInsurer":{"litAvoid":true,"name":"Tesco Bank (ITB)","reference":"4567YH8","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"ML68EZE","make":"PEUGEOT","model":"208 SIGNATURE S/S"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"445 Talbot Road","town":"Manchester","postcode":"M16 0SP","readonly":true},"streetNumberOrBuildingName":"445","postalCode":"M16 0SP","matched":true,"policyholderPhone":"4567890098","policyholderEmail":"fgtv@tbuy.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"rtyuio","accidentCircumstances":"rtyuio uiop"}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Full Instruction, LV dispute, Outlay less than 10K, Repair,  private PH, Private TP

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"I7HG709AO8989","bacs":"LV Dispute"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"repairs":1000,"policyExcess":100,"hireCharges":250,"miscellaneous":200},"comfirmOutlayOver10K":false,"accidentDate":"2021-02-01T00:00:00.000Z","policyholderTitle":"Miss","policyholderFirstName":"JP","policyholderLastName":"Morgan","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"repairs","outlayAmount":1350},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"JC","lastName":"Penny"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{"fileNotes":"None"},"tpInsurer":{"litAvoid":true,"name":"Esure Insurance Limited","reference":"I767I78I7I","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"OE18EKU","make":"PEUGEOT","model":"3008 GT LINE BLUEHDI S/S AUTO"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"566 Chatsworth Place","town":"Stoke-on-Trent","postcode":"ST3 7DW","readonly":true},"streetNumberOrBuildingName":"566","postalCode":"ST3 7DW","matched":true,"policyholderPhone":"986754545367","policyholderEmail":"syyyuy@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"wewetrt","accidentCircumstances":"rertet htytiu iuoiu yiuuloi"}}
    * configure readTimeout = 60000
    And request payload
    When method post
    Then status 200

  Scenario: Full Instruction, LV dispute, Outlay > 10K, Total loss,  private PH, Private TP

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"U65008990","bacs":"LV Dispute"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"pav":15000,"storageAndRecovery":400,"policyExcess":300,"salvage":2000,"hireCharges":1000,"miscellaneous":50},"comfirmOutlayOver10K":true,"accidentDate":"2021-01-06T00:00:00.000Z","policyholderTitle":"Mrs","policyholderFirstName":"TT","policyholderLastName":"Star","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"totalLoss","outlayAmount":14150},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"DJ","lastName":"Cool"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{"fileNotes":"n"},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"456789","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK70OLA","make":"VOLKSWAGEN","model":"GOLF LIFE TSI"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"234 Victoria Street","town":"Stoke-on-Trent","postcode":"ST4 6DW","readonly":true},"streetNumberOrBuildingName":"234","postalCode":"ST4 6DW","matched":true,"policyholderPhone":"5767890","policyholderEmail":"hgghhh@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"erthyy","accidentCircumstances":"thyjuyuky"}}
    * configure readTimeout = 60000 
    And request payload
    When method post
    Then status 200




