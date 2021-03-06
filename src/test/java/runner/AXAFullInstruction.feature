Feature: Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass
  Scenario: Full Instruction, Total Loss, Outlay>10K

Given path '/full'
And header Content-type = 'application/json'
And header ocp-apim-subscription-key = '9365f10d32b74e78ace27cb278e96ec2'
* def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"IUOIU9OIUpo6"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":false,"pav":15000,"pavLessSalvage":10000,"pavNet":9500,"salvage":5000,"policyExcess":500,"storageAndRecovery":650,"hireCharges":200,"miscellaneous":50},"comfirmOutlayOver10K":true,"accidentDateDay":"03","accidentDateMonth":"05","accidentDateYear":"2019","policyholderTitle":"Mrs","policyholderFirstName":"Annie","policyholderLastName":"Wolfe","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"totalLoss","outlayAmount":9500,"totalToRecover":10400,"customerUIL":500},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"F","lastName":"Redd"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"tpInsurer":{"litAvoid":true,"name":"Esure Insurance Limited","reference":"ES/UYU/89","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN69OKE","make":"PEUGEOT","model":"3008 GT LINE PREMIUM P-TECH SS"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"17 Brandforth Road Brandforth Road","town":"Manchester","postcode":"M8 0BH","readonly":true},"streetNumberOrBuildingName":"17 Brandforth Road","postalCode":"M8 0BH","matched":true,"policyholderPhone":"907896","policyholderEmail":"tyun@ioi.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Bolton","accidentCircumstances":"Lorem Ipsum"}}
 And request payload
* configure readTimeout = 70000
When method post
Then status 200



  Scenario: Full Instruction, AXA, Dispute,Outlay <10k, Vehicle Repair, Private PH and TP, both driving

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '9365f10d32b74e78ace27cb278e96ec2'
    * def payload =
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200

    ##Add scenario outlay >10k, total loss