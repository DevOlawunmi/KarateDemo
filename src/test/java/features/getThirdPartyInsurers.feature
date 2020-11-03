# The way an API works is through a contract. First there is a request which includes an endpoint, a header and a body
  # The service responds with its own set of headers, body and also a status code
  #Parameters, Output, InterOp, Security, Errors and Data
Feature: Get Third Party Insurers
  Background:
    * url 'https://hfportaldev.azure-api.net/'

  Scenario: Get Third Party Insurers
    
    Given path 'hf-recoveries/tpis/'
    And header Authorization = 'Bearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYwNDMxNTI1MiwiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjA0MzExNjUyLCJjbGllbnRfaWQiOiJhZmViZDRhNC0yN2Q4LTRlZjAtYWMzMS0wN2JjOTJjMGVkYWQiLCJzaWQiOiJiNTE5M2RjYy0xNTQwLTQyNzEtYmQ0NC01NGMwZjMzYzhmMWMifQ.T4hIaMdbQ9XHuGShZBV7d9r173jAO1LfgbIjU5tuOZz5XkEchevUYYpmZjmvB0V7RnLsuVSjZEBNe9m6eMcBXeRjBQ4ElDRsnE_mnd_6cccUwQrm4MZUOiSHDWoyQMASvyhv1LfX8lIegm2IQ8yl5L6uApNOjUY38Dtse68PSL1qR9OsVC1qfe5nghZOaMOk8Ke8S7UsDE5w3h7ez6NM0gphn42tZUBzK9UXtat05RwmZRbg1xQ1E2PuYWiWELPrXsGIMB_Gsy1lo9EuS1GjvpEujOOmXazogF0UD2Wfx-N9p2Dd5-Is228V-oSs3eblgaSsYDrY5Ivvqa2NAjsX8Q'
    When method GET
    #We are asserting that our request will be successful (200 status code)
    Then status 200
