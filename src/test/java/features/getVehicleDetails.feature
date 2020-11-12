# We make calls to DVLA API, this test gets details of a vehicle using the VRN
Feature: Get vehicle details
  Background:
    * url 'https://hfportaldev.azure-api.net'

  Scenario: Get Vehicle Details

    Given path '/hf-recoveries/vrnlookup'
    And header Content-type = 'application/json'
    And header Authorization = 'Bearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYwNDM5NDQ1OSwiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjA0MzkwODU5LCJjbGllbnRfaWQiOiJhZmViZDRhNC0yN2Q4LTRlZjAtYWMzMS0wN2JjOTJjMGVkYWQiLCJzaWQiOiI2ZjY1NDQxZi03NmY4LTQwZWUtOGQzNS0zNzUyMjJjN2E0NDUifQ.RusYSbXuD64ewzvlFhF61JPRCQoe8-MzprWAvn6iDbZAu6QwxYWozuiN33PznRMfb_M1IeVmigxQ_0SA2VQtGaTE-NHfSlWLGrdLvJ-v7hS_CqvwX8RZ2A1jdMwOPKseDfQ_638dSt6gyQIilsD0xyTXVk1K18MYvZTpyLzSk56jnuSyVeChL-IpJ7YPIJvFx5pglCNmXI3HtPH9e0NQ53Jv5RgebfHRQYu-v1d4ZK72gBQmWUr_J_WzOQ3hD3p-hHNCMmehwNV55ehQIFszigNmvoJfXy0jzboZSI-hgW1krHJALwtaWYCILYOQbFPA_f5czwx6abFnBQMNOxDPBw'
    And request '{"vrn": "FP07EOC"}'
    When method POST
    Then status 200
    And print response