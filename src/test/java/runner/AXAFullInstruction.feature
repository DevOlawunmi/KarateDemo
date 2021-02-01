Feature: Search cases
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, AXA, Non-Fault, Vehicle Repair, Comm PH, Comm TP,

Given path '/full'
And header Content-type = 'application/json'
And header ocp-apim-subscription-key = '9365f10d32b74e78ace27cb278e96ec2'
* def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"TU65UG8/01"},"claimantAndAccident":{"policyholderPersonalOrCommercial":"commercial","liabilityApportionmentPolicyholder":0,"liabilityApportionmentThirdParty":100,"repairBreakdown":{"repairs":680,"policyExcess":100,"hireCharges":249.8,"miscellaneous":23.5},"comfirmOutlayOver10K":false,"accidentDate":"2020-11-04T00:00:00.000Z","policyholderCommercialName":"FARZ Ltd","liabilityDecision":"Non Fault","liabilityAgreed":true,"outlayType":"repairs","outlayAmount":853.3,"outlayTotalSeekRecovery":853.3},"tpDetails":{"thirdPartyPersonalOrCommercial":"commercial","thirdPartyCommercialName":"GUILTY PLC"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Zurich","reference":"878IYGHU","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"MK70OLA","make":"VOLKSWAGEN","model":"GOLF LIFE TSI"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"4567 Talbot Road","town":"Manchester","postcode":"M16 0SP","readonly":true},"streetNumberOrBuildingName":"4567","postalCode":"M16 0SP","matched":true,"policyholderPhone":"7898557898","policyholderEmail":"fikle@test.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":false},"driDetails":{"addressLookupCountry":"GB","address":{"line1":"98 Lisetta Avenue","town":"Oldham","postcode":"OL4 1BY","readonly":true},"driversTitle":"Mr","driversFirstName":"Finley","driversLastName":"Home","streetNumberOrBuildingName":"98","postalCode":"OL4 1BY","matched":true,"driverPhone":"76689799","driverEmail":"sssdtr@yjyiy.com"},"driverdetailsWasThirdParty":{"isThirdPartyDriver":false},"odrDetails":{"addressLookupCountry":"GB","address":{"line1":"77 Sten Close","town":"Enfield","postcode":"EN3 6WX","readonly":true},"driversTitle":"Mrs","driversFirstName":"J","driversLastName":"J","streetNumberOrBuildingName":"77","postalCode":"EN3 6WX","matched":true,"driverPhone":"680879878","driverEmail":"dfttt@example.com"},"accDetails":{"accidentLocation":"tyuyuyuy","accidentCircumstances":"ghgg yyiy yuyr rrd rt"}}
And request payload
* configure readTimeout = 70000
When method post
Then status 200

  Scenario: Full Instruction, AXA, Dispute, Vehicle Repair, Private PH and TP, both driving

    Given path '/full'
    And header Content-type = 'application/json'
    And header ocp-apim-subscription-key = '9365f10d32b74e78ace27cb278e96ec2'
    * def payload = 
    And request payload
    * configure readTimeout = 70000
    When method post
    Then status 200