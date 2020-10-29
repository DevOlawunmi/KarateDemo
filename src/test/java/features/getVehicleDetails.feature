# We make calls to DVLA API, this test gets details of a vehicle using the VRN
Feature: Get vehicle details
  Background:
    * url 'https://hfportaldev.azure-api.net'

  Scenario: Get Vehicle Details

    Given path '/hf-recoveries/vrnlookup'
    And header Content-type = 'application/json'
    And header Authorization = 'Bearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYwMzk3MDg1MSwiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjAzOTY3MjUxLCJjbGllbnRfaWQiOiJhZmViZDRhNC0yN2Q4LTRlZjAtYWMzMS0wN2JjOTJjMGVkYWQiLCJzaWQiOiIyMDg1YTQzYy1lNTg0LTQxMmQtYTU4My0zNjM1ZGEyMzNhOTYifQ.MXYolhiwCT4pPvn-xFwS41yzye0dTfAn0RrgvrZ0RviLnohy600rNFEE1MOnHl8Qf_bxlNGrisQprfaZpce1RskzjM8laWntu_hrV4_q2KWKfxebt1Xk-LiQBeP3yI0D6Fi5ojd0D59C3jQvgBDanpfe_OwmhHQxbBeXX7p7L_oWQQfqcUgi-bjO4ris7Oxz2gbfF8F8HBYU8kE4HbC7En92teGNGTHazWYpOSwNKTTlTc6tIy9PTzI2bY1Bg9qZQhvftFq8dELVssSaTS8ipxG3pyr08hdI4u6uRqi6NQBmqHbHgU_cGBRW-Flh34Mt4yHcBzm0UE91vpV1Chdyhw'
    And request '{"vrn": "VN63PKF"}'
    When method POST
    Then status 200