Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, Non fault, private PH and TP

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"T60786P22"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"2020-12-01T00:00:00.000Z","policyholderTitle":"Miss","policyholderFirstName":"Jimmy","policyholderLastName":"Hardy","outlayAmount":767,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","addressLookupCountry":"GB","address":{"line1":"22 New Barn Street","town":"London","postcode":"E13 8JZ","readonly":true},"title":"Mr","firstName":"Taye","lastName":"Diggs","streetNumberOrBuildingName":"22","postalCode":"E13 8JZ","matched":true,"email":"rest@testt.com"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":true},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"IO9I8J","ripe":true},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"1 Piccadilly","town":"London","postcode":"W1J 7NT","readonly":true},"streetNumberOrBuildingName":"1","postalCode":"W1J 7NT","matched":true,"policyholderPhone":"867687","policyholderEmail":"sttrrt@email.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Lorem","accidentCircumstances":"YTUYW1J 7NTBearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYxMDQ0ODY0NCwiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjEwNDQ1MDQ0LCJjbGllbnRfaWQiOiJ"}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Full Instruction, Dispute, Commercial PH,
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"ytu8567222","bacs":"Genz"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","comfirmOutlayOver10K":false,"accidentDate":"2020-12-01T00:00:00.000Z","policyholderCommercialName":"TT Ltd","outlayAmount":7667,"liabilityDecision":"Dispute","liabilityApportionment":60},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Miss","firstName":"Y","lastName":"K"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Esure Insurance Limited","reference":"345768","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK67LPL","make":"FORD","model":"TRANSIT CUSTOM 270 LIMITED"}},"insVehicle":{"vehicle":{"matched":true,"vrn":"VN64OLE","make":"MITSUBISHI","model":"OUTLANDER GX 4H PHEV AUTO"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"118 Blueberry Avenue","town":"Manchester","postcode":"M40 0GE","readonly":true},"streetNumberOrBuildingName":"118","postalCode":"M40 0GE","matched":true,"policyholderPhone":"767785657","policyholderEmail":"mail@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":false},"driDetails":{"addressLookupCountry":"GB","address":{"line1":"776 Princes Road","town":"Stoke-on-Trent","postcode":"ST4 7DW","readonly":true},"driversTitle":"Mr","driversFirstName":"A","driversLastName":"Sam","streetNumberOrBuildingName":"776","postalCode":"ST4 7DW","matched":true,"driverPhone":"675465465","driverEmail":"dem@me.com"},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"yuy","accidentCircumstances":"yyy rtr"}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Full Instruction, Non fault, Total loss
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"HTYI7Y78","bacs":"Ultima"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":30,"liabilityApportionmentThirdParty":70,"totalLossBreakdown":{"pav":6000,"storageAndRecovery":300,"policyExcess":250,"salvage":2000,"hireCharges":120,"miscellaneous":40},"comfirmOutlayOver10K":false,"accidentDate":"2019-08-11T23:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"Y","policyholderLastName":"K","liabilityDecision":"Dispute","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":4210,"outlayTotalSeekRecovery":2947},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"J","lastName":"J"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"56YT6IUBN","ripe":true}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 201



