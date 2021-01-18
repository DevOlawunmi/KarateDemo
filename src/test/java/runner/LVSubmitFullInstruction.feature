Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, LV Dispute, Dispute, Commercial PH, private TP

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"YIUY77YYLV","bacs":"LV Dispute"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","comfirmOutlayOver10K":false,"accidentDate":"2020-12-01T00:00:00.000Z","policyholderCommercialName":"Bee Ltd","outlayAmount":4465.98,"liabilityDecision":"Dispute","liabilityApportionment":40},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Boola","lastName":"Seni"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Esure Insurance Limited","reference":"6TYT6U","ripe":true},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"440 Sten Close","town":"Enfield","postcode":"EN3 6WX","readonly":true},"streetNumberOrBuildingName":"440","postalCode":"EN3 6WX","matched":true,"policyholderPhone":"56767626","policyholderEmail":"dtfftf@email.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":false},"driDetails":{"addressLookupCountry":"GB","address":{"line1":"113 Lisetta Avenue","town":"Oldham","postcode":"OL4 1BY","readonly":true},"driversTitle":"Mrs","driversFirstName":"Sadie","driversLastName":"Golden","streetNumberOrBuildingName":"113","postalCode":"OL4 1BY","matched":true,"driverPhone":"67U689O","driverEmail":"agftft@exam.com"},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"5hbkj","accidentCircumstances":"kjhkiji jhikjik mjhukuh"}}
    And request payload
    When method post
    Then status 200

  Scenario: Full Instruction, LV Non-fault, private PH, private TP

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '79f632d66ad44b45951e2597c855f490'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"LVo878098A","bacs":"LV Non-Fault"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"2020-12-03T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"Df","policyholderLastName":"Gold","outlayAmount":8797,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"TP","lastName":"InsuredTP"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"98989","ripe":true},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"178 Blueberry Avenue","town":"Manchester","postcode":"M40 0GE","readonly":true},"streetNumberOrBuildingName":"178","postalCode":"M40 0GE","matched":true,"policyholderPhone":"O87879O","policyholderEmail":"ygybg@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"7i8i7","accidentCircumstances":"ikjuilu iluiuii "}}
    And request payload
    When method post
    Then status 200
