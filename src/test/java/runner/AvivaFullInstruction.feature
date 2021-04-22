Feature: Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass
  Scenario: Full Instruction, AXA, Non-Fault, Vehicle Repair, Comm PH, Comm TP,

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"businessChannel":"MISSING VALUES","bacs":"Guidewire","reference":"YTRYJGDSY","gwExposureRef":"GK/IUIU/P"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":false,"pav":8900,"pavLessSalvage":8000,"pavNet":8000,"salvage":900,"policyExcess":0,"storageAndRecovery":300,"hireCharges":0,"miscellaneous":800},"comfirmOutlayOver10K":false,"accidentDateDay":"02","accidentDateMonth":"01","accidentDateYear":"2019","policyholderTitle":"Ms","policyholderFirstName":"Jonnie","policyholderLastName":"James","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":8000,"totalToRecover":9100,"customerUIL":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Andy","lastName":"Peters"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"TYTUTYI","ripe":false},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN68OLA","make":"TRIUMPH","model":"TIGER 1200 XRX LOW"}}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200