Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, Non fault, Total loss, Outlay>10k, Private PH and TP, Additional info

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"GTFYYTYTGYUYY","bacs":"CHS"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"pav":16000,"storageAndRecovery":500,"policyExcess":500,"salvage":4000,"hireCharges":1000,"miscellaneous":800},"comfirmOutlayOver10K":true,"accidentDate":"2020-09-08T23:00:00.000Z","policyholderTitle":"Father","policyholderFirstName":"Mensah","policyholderLastName":"Ot","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":13800},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"James","lastName":"Bond"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{"fileNotes":"A Tale of Two Cities (1859) is a historical novel by Charles Dickens."},"tpInsurer":{"litAvoid":true,"name":"Advantage Insurance Company Ltd","reference":"0I0IUUU3E","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"ML67OLA","make":"SUZUKI","model":"SX4 S-CROSS SZ-T BOOSTERJET A"}},"insVehicle":{"vehicle":{"matched":true,"vrn":"SK68OLE","make":"PEUGEOT","model":"2008 ALLURE PREMIUM"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"45 Hilton Street North","town":"Manchester","postcode":"M7 2DH","readonly":true},"streetNumberOrBuildingName":"45","postalCode":"M7 2DH","matched":true,"policyholderPhone":"455678900099","policyholderEmail":"gtytt@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Queen's road","accidentCircumstances":"They were the best of times, they were the worst of times"}}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Full Instruction, Dispute, Commercial PH,
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload =
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200

  Scenario: Full Instruction, Non fault, Total loss
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"TSYHTIYAIuUU","bacs":"Genz"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"pav":10000,"storageAndRecovery":200,"policyExcess":1000,"salvage":2000,"hireCharges":300,"miscellaneous":300},"comfirmOutlayOver10K":false,"accidentDate":"2021-01-05T00:00:00.000Z","policyholderTitle":"Sir","policyholderFirstName":"Alan","policyholderLastName":"Q","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":7800},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Miss","firstName":"Denise","lastName":"Jones"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{"fileNotes":"This is to test the file notes"},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"FDRE5R6","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"SK67OLA","make":"VAUXHALL","model":"ASTRA ELITE TURBO S/S AUTO"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"57 Higher House Close","town":"Oldham","postcode":"OL9 8LP","readonly":true},"streetNumberOrBuildingName":"57","postalCode":"OL9 8LP","matched":true,"policyholderPhone":"98897980","policyholderEmail":"gttygbn@mailer.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"657890","accidentCircumstances":"trfgyubni tyuoi  67iuiop"}}
    And request payload 
    * configure readTimeout = 60000
    When method post
    Then status 200



