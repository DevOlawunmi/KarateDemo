Scenario: Full Instruction, Tesco, Total Loss, Private PH, Private TP, PH and TP driving

Given path '/full'
And header Content-type = 'application/json'
And header ocp-apim-subscription-key = '54d0bbc1045345caa94ab2cf7f2af69b'
* def payload = {"client":{"handlerName":"Ola Ajibola","handlerTel":"0161 413 1244","handlerEmail":"Ola.Ajibola@h-f.co.uk","overrideHandlerDetails":false,"reference":"RYTYUYUYI"},"claimantAndAccident":{},"tpDetails":{"thirdPartyPersonalOrCommercial":"personal","title":"Mr","firstName":"Andy","lastName":"Dawson"},"tpVehicleInsured":{"isTPVInsured":true,"isTPDAddress":false},"tpInsurer":{"litAvoid":true,"name":"Zurich","reference":"76679988","ripe":true},"tpDetailsVehicle":{"vehicle":{"matched":true,"vrn":"OE65VRN","make":"BMW","model":"435D XDRIVE M SPORT AUTO"}},"polDetails":{"addressLookupCountry":"GB","address":{"line1":"124 Glebedale Road","town":"Stoke-on-Trent","postcode":"ST4 3LT","readonly":true},"streetNumberOrBuildingName":"124","postalCode":"ST4 3LT","matched":true,"policyholderPhone":"786999999990","policyholderEmail":"trymail@mail.com"},"driverdetailsWasPolicyholder":{"isPolicyholderDriver":true},"driverdetailsWasThirdParty":{"isThirdPartyDriver":true},"accDetails":{"accidentLocation":"Git Avenue","accidentCircumstances":"Update the textarea with some random text."}}
And request payload
* configure readTimeout = 70000
When method post
Then status 200