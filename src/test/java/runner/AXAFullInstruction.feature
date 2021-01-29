Feature: Search cases
  Background:

    * url 'https://hfportaldev.azure-api.net/hf-recoveries-a2a'


  Scenario: Full Instruction, AXA, Total Loss, Private PH, Private TP, PH and TP driving

Given path '/full'
And header Content-type = 'application/json'
And header ocp-apim-subscription-key = '9365f10d32b74e78ace27cb278e96ec2'
* def payload =
And request payload
* configure readTimeout = 70000
When method post
Then status 200