Feature: LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass
  Scenario: LBA, Total loss, excess waived

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"AUOPY/09HHH","bacs":"Guidewire","gwExposureRef":"GW988"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":true,"pav":6000,"pavLessSalvage":5000,"pavNet":5000,"salvage":1000,"policyExcess":0,"storageAndRecovery":200,"hireCharges":200,"miscellaneous":500},"comfirmOutlayOver10K":false,"accidentDateDay":"22","accidentDateMonth":"05","accidentDateYear":"2020","policyholderTitle":"Ms","policyholderFirstName":"Goldie","policyholderLastName":"Hawn","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"totalLoss","outlayAmount":5000,"totalToRecover":5900,"customerUIL":0},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"John","lastName":"Fields"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":false,"tpInsurerAddress":{"addressLookupCountry":"GB","address":{"line1":"44 Brandforth Road","town":"Manchester","postcode":"M8 0BH","readonly":true},"streetNumberOrBuildingName":"44","postalCode":"M8 0BH","matched":true},"name":"Churchill","reference":"CH55/IOY","email":"emailus@church.com","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":" BG12BZH","make":"VAUXHALL","model":"ASTRA EXCLUSIV 113"}}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200