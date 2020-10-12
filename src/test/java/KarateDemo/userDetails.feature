Feature: user details

  Scenario: get call test

Given url 'https://hfp-recoveries.azureedge.net/'

    When method GET
Then status 200
    Then print response