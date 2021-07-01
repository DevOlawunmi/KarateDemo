
Feature: Search cases
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


Scenario: Full Instruction, Liability agreed, Vehicle repairs,  PH and TP driving

Given path '/full'
And header Content-type = 'application/json'
And header ocp-apim-subscription-key = '54d0bbc1045345caa94ab2cf7f2af69b'
* def payload = 
And request payload
* configure readTimeout = 70000
When method post
Then status 200



  Scenario: Tesco Non-fault, outlay <10k
    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '54d0bbc1045345caa94ab2cf7f2af69b'
   * def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"KIUYIU009OI"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"personal","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"repairs":890,"policyExcess":200,"hireCharges":200,"miscellaneous":110},"comfirmOutlayOver10K":false,"accidentDate":"2021-01-06T00:00:00.000Z","policyholderTitle":"Mrs","policyholderFirstName":"U","policyholderLastName":"G","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":1000},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"J","lastName":"J"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"additionalInformation":{},"tpInsurer":{"litAvoid":true,"name":"Admiral","reference":"DFGTUYUJ","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"OV07LOA","make":"VAUXHALL","model":"CORSA CLUB"}},"insVehicle":{"vehicle":{"matched":true,"vrn":"MK67OLU","make":"KIA","model":"SPORTAGE 1 CRDI ISG"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"112 Victoria Street","town":"Stoke-on-Trent","postcode":"ST4 6DW","readonly":true},"streetNumberOrBuildingName":"112","postalCode":"ST4 6DW","matched":true,"policyholderPhone":"56578O909","policyholderEmail":"byjuyui@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"rttytu","accidentCircumstances":"pooi i  gyy   yty "}}
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200