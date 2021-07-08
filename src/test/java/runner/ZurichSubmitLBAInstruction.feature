Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


##PASS08/07
  Scenario: Submit LBA, Outlay >10k
    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = read('ZurichLBAOutlayGreaterthan10k.json')
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200
    And print response
   # And match response contains {success: 'Our Reference: 189611/1835'}



##PASS08/07
  Scenario: Submit LBA, Personal TP, Personal PH, Outlay <10k

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"bacs":"CHS","reference":"LI896OYUHG"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","comfirmOutlayOver10K":false,"accidentDate":"12/09/2018","policyholderTitle":"Mr","policyholderFirstName":"J","policyholderLastName":"Chan","outlayAmount":5877.22},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"B","lastName":"Lee"},"tpVehicleInsured":{"isTPVInsured":true},"tpInsurer":{"litAvoid":false,"name":"QBE","sendDocsByPost":false,"email":"motor.claims@uk.qbe.com","reference":"QBE8I7877","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":false,"vrn":"ML59EKE","make":"FORD","model":"FIESTA BASE TDCI 68"}},"submitDeclaration":true}
    And request payload
    * configure readTimeout = 60000
    When method POST
    Then status 200




