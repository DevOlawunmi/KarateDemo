# This test sends an API call to validate the details of the logged in \user
  # the variable here is the JWT
Feature: User Details

  Background:
    * url 'https://auth.pingone.eu/bfc2e611-8a03-48ab-bdd8-8b997ba52560'

  Scenario: Get user details

    Given path '/as/userinfo'
 And header Content-type = 'application/json'
 And header ocp-apim-subscription-key = '688e9e8619e04c0a9a9b70f539016756'
    And header authorization = 'Bearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYwOTcyODg2OSwiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjA5NzI1MjY5LCJjbGllbnRfaWQiOiJhZmViZDRhNC0yN2Q4LTRlZjAtYWMzMS0wN2JjOTJjMGVkYWQiLCJzaWQiOiIwZmFjZDc0MC05Nzg4LTQxMWEtODNkYi0zM2ViYWQzZjQ5ZjQifQ.aShyip_6N_8rT5yDKVHykppKoVZerJUir-vfapmNXFJRI-AvwRR3_IOT1vz1aHdyvmRMJUq_T6aJSuhaId6YrGy1Ol-bD5dZ6qweVzHemLI-rL1SmKYkf1ydIhhJBQgmXRMaDoerxODaPueNGuc2g2FkQ3GsP_TudTlVnX51DjcyLl8KpkOry7FE1Dz-qL8pSuHJyRdfDJi3s2-tWgbKi4QXuRicUMJLxynpUPWC9Ma-0BEd6cZ_UF9Kl1a4SJbjNoaYRdFuhHzb6H0LVds6hUPLNR7_jzlD53ULZMugtfjv5QAbkxeEuuDLJMSTgzximvKbNpj94wi7Q1q-J0xTgg'
 When method GET
 Then status 200





