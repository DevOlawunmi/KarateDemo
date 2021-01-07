Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'
# this scenario sends a chaser post lba sent

  Scenario: Submit LBA

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = {"client":{"handlerName":"O Ajibola","handlerTel":"0161667553767890","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"ASPD2230977854","bacs":"ZPC Vlocity"},"claimantAndAccident":{"comfirmOutlayOver10K":false,"accidentDate":"2019-06-02T23:00:00.000Z","policyholderTitle":"Mrs","policyholderFirstName":"Daisy","policyholderLastName":"Martins","outlayAmount":905.66},"tpDetails":{"title":"Mr","firstName":"Basil","lastName":"Thyme"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Aviva UK Insurance","reference":"AVI8976","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"VN68PKF","make":"VOLKSWAGEN","model":"PASSAT GT TDI S-A"}}}
    And request payload
    When method post
    Then status 200
