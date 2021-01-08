Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'
# this scenario sends a chaser post lba sent

  Scenario: Submit LBA

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"5467","bacs":"Zeus"},"claimantAndAccident":{"comfirmOutlayOver10K":false,"accidentDate":"2019-12-22T00:00:00.000Z","policyholderTitle":"Mr","policyholderFirstName":"A","policyholderLastName":"D","outlayAmount":5656,"liabilityDecision":"Non Fault","liabilityApportionment":0},"tpDetails":{"title":"Mr","firstName":"D","lastName":"F"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"AXA INSURANCE UK PLC","reference":"5566","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN60PKF","make":"CITROEN","model":"C4 VTR+ E-HDI S-A"}}}
    And request payload
    When method post
    Then status 200
