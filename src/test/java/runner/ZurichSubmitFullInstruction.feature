Feature: Submit Full Instruction
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, Total Loss, Outlay>10k, NO TP details

    #pass 19/04
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"YUIGGGIGH","bacs":"ZAC"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":false,"pav":12000,"pavLessSalvage":10800,"pavNet":10300,"salvage":1200,"policyExcess":500,"storageAndRecovery":200,"hireCharges":650,"miscellaneous":200},"comfirmOutlayOver10K":true,"accidentDate":"12/09/2020","policyholderTitle":"Miss","policyholderFirstName":"T","policyholderLastName":"Y","liabilityDecision":"Dispute","liabilityAgreed":false,"outlayType":"totalLoss","outlayAmount":10300,"totalToRecover":11350,"customerUIL":500},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","thirdPartyCommercialName":"STAN PLC","thirdPartyDriverKnown":false,"noThirdPartyDriverReason":"Hit Whilst Parked/Unattended"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"broker":{"insurerOrBroker":"Insurer"},"tpInsurer":{"litAvoid":false,"name":"Saga (Acromas)","sendDocsByPost":false,"email":"claimsdocumentation@saga.co.uk","reference":"SAGAETE0989","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":false,"vrn":"MJ66OPE","make":"NISSAN","model":"X-TRAIL TEKNA DCI"}},"insVehicle":{"vehicle":{"matched":false,"vrn":"PE60LRN","make":"VOLKSWAGEN","model":"GOLF MATCH TDI 105"}},"polDetails":{"addressLookupCountry":"GB","address":{"readonly":false,"line1":"234","postcode":"OL4 7BY","line2":"Test Town"},"streetNumberOrBuildingName":"56","postalCode":"CH99 9NL","matched":true},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":false},"driDetails":{"addressLookupCountry":"GB","address":{"line1":"89 Silver Street","town":"Gainsborough","postcode":"DN21 2DT","readonly":false},"driversTitle":"Mr","driversFirstName":"Jake","driversLastName":"Pirate","postalCode":"DN21 2DT","matched":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":false},"odrDetails":{"driversTitle":"Mx","driversFirstName":"Unknown","driversLastName":"Unknown"},"accDetails":{"accidentLocation":"ssfdsd","accidentCircumstances":"yutyugtg"},"submitDeclaration":true}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200


#pass 19/04
  Scenario: Full Instruction, Non-fault, Repairs, Outlay<10K
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"UUYFQERW","bacs":"ZAC"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"excessWaived":false,"repairsGross":2800,"repairsNet":2630,"policyExcess":170,"storageAndRecovery":90.25,"hireCharges":100,"miscellaneous":89.11},"comfirmOutlayOver10K":false,"accidentDate":"14/09/2019","policyholderTitle":"Mr","policyholderFirstName":"H","policyholderLastName":"Simpson","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":2630,"totalToRecover":2909.36,"customerUIL":170},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Sean","lastName":"Penn"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{"fileNotes":"ihjgyhft"},"broker":{"insurerOrBroker":"Broker","correspondanceBroker":false},"tpInsurer":{"litAvoid":true,"name":"AXA ","sendDocsByPost":false,"reference":"AXTG8776","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":false,"vrn":"PK70OLA","make":"RENAULT","model":"CAPTUR S EDITION E-TECH PHEV A"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"564 Kingston Avenue","town":"Oldham","postcode":"OL9 8LF","readonly":true},"streetNumberOrBuildingName":"564","postalCode":"OL9 8LF","matched":true},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"fdss","accidentCircumstances":"uyi uiu7 ui tyrtutr"},"submitDeclaration":true}
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200



