Feature: Submit LBA
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'
#FAIL
    Scenario: Submit LBA, Dispute, Total loss

      Given path '/LBA'
      And header Content-type = 'application/json'
      And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
      * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161667553767890","handlerEmail":"olawunmi263@yahoo.com","overrideHandlerDetails":false,"reference":"GFCRDYTU","bacs":"Ultima"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"totalLossBreakdown":{"excessWaived":false,"pav":5000,"pavLessSalvage":5000,"salvage":0,"policyExcess":500,"storageAndRecovery":0,"hireCharges":500,"miscellaneous":0},"comfirmOutlayOver10K":false,"accidentDateDay":"31","accidentDateMonth":"12","accidentDateYear":"2020","policyholderCommercialName":"Dallas Ltd","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"totalLoss","outlayAmount":5000,"totalToRecover":5500,"customerUIL":500},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Felix","lastName":"Thecat"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"UHKJYUYUKKJ","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK67EKU","make":"SKODA","model":"OCTAVIA VRS 245 TSI S-A"}}}
      And request payload
      * configure readTimeout = 60000
      When method post
      Then status 200


##PASS
  Scenario: Submit LBA, Non-fault, liability agreed, total loss

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload = read('ZurichLBATotalLoss.json')
    And request payload
    * configure readTimeout = 60000
    When method post
    Then status 200
    And print response
   # And match response contains {success: 'Our Reference: 189611/1835'}
 


  Scenario: Submit LBA, 50/50, dispute, liability agreed, total loss

    Given path '/LBA'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    * def payload =
    * configure readTimeout = 60000
    When method post
    Then status 200




