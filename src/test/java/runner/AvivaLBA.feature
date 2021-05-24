Feature: LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'

#pass
  Scenario: LBA, Total loss, excess waived

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"AD8998T00","bacs":"Guidewire","gwExposureRef":"ADYTUY00-02"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDateDay":"02","accidentDateMonth":"05","accidentDateYear":"2020","policyholderTitle":"Mr","policyholderFirstName":"Tiny","policyholderLastName":"Tempah","outlayAmount":3000},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mrs","firstName":"Joanna","lastName":"Foo"},"tpVehicleInsured":{"isTPVInsured":true},"tpInsurer":{"litAvoid":true,"name":"Esure Insurance Limited","reference":"ES56Y5OVV","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"YH67KPP","make":"MERCEDES-BENZ","model":"SPRINTER 314CDI"}}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200

    Scenario: LBA, Comm vs Comm
      Given path '/LBA'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '6251b85430864478ab2ed74de77fed0e'
      * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"bacs":"Exceed & Gemini","reference":"u9976g786"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","comfirmOutlayOver10K":false,"accidentDateDay":"04","accidentDateMonth":"11","accidentDateYear":"2019","policyholderCommercialName":"CAZZ Plc","outlayAmount":4000},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","thirdPartyCommercialName":"FAME Ltd"},"tpVehicleInsured":{"isTPVInsured":true},"tpInsurer":{"litAvoid":false,"tpInsurerAddress":{"addressLookupCountry":"GB","address":{"line1":"118 Talbot Road","town":"Manchester","postcode":"M16 0SP","readonly":true},"streetNumberOrBuildingName":"118","postalCode":"M16 0SP","matched":true},"name":"Churchill","reference":"76VKBYIB","email":"thisisatest@test.com","ripe":false},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"DP66AEX","make":"VAUXHALL","model":"MERIVA CLUB"}}}
      And request payload
      * configure readTimeout = 70000
      When method post
      Then status 200