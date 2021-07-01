Feature: LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass
  Scenario: Personal PH and TP, TPI details manually entered

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"bacs":"Exceed & Gemini","reference":"HVHT0Gd8FTUYPP"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"06/04/2020","policyholderTitle":"Mr","policyholderFirstName":"Ravi","policyholderLastName":"Jones","outlayAmount":5609.22},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Ryan","lastName":"Crest"},"tpVehicleInsured":{"isTPVInsured":true},"tpInsurer":{"litAvoid":false,"tpInsurerAddress":{"addressLookupCountry":"GB","address":{"line1":"119 Talbot Road","town":"Manchester","postcode":"M16 0SP","readonly":true},"streetNumberOrBuildingName":"119","postalCode":"M16 0SP","matched":true},"name":"Test Insurers","email":"ins@test.com","reference":"66FEGGT09","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":false,"vrn":"ML67OPE","make":"FORD","model":"TRANSIT CONNECT 200"}},"submitDeclaration":true}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200

    Scenario: LBA, Private vs Private
      Given path '/LBA'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
      * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"JHGIUHGB","bacs":"Exceed & Gemini"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"13/09/2021","policyholderTitle":"Mr","policyholderFirstName":"K","policyholderLastName":"L","outlayAmount":5000},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Miss","firstName":"Lola","lastName":"Day"},"tpVehicleInsured":{"isTPVInsured":true},"tpInsurer":{"litAvoid":false,"name":"ACE Insurance","sendDocsByPost":false,"email":"tt@ace.co.uk","reference":"ACU76786","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":false,"vrn":"MF60ORP","make":"FORD","model":"FIESTA ZETEC"}},"submitDeclaration":true}
      And request payload
      * configure readTimeout = 70000
      When method post
      Then status 200