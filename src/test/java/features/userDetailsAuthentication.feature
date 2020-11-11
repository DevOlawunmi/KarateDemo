Feature: API Authentication

  Background:
    * url 'https://auth.pingone.eu'

    Scenario: Authentication test
      
      Given path '/bfc2e611-8a03-48ab-bdd8-8b997ba52560/as/token'
      And form field grant_type = 'authorization_code'
      And form field email = 'ola.ajibola@h-f.co.uk'
      And form field password = '@Fisherman01'
      And form field client_id = 'afebd4a4-27d8-4ef0-ac31-07bc92c0edad'
      And form field redirect_uri = 'https://hfp-recoveries.azureedge.net/auth/redirect'
      And form field code = '0e5c8161-f9b1-43a2-a616-4d9a13118f3a'
      And form field code_verifier = 'rGYsg8zQLnCTtCMkaZb1hET6CcLsEZc7ykDtiAOVr9Qp7yxf28FiClEQz81HdWBg49T4uSZsMqnWpraH3laxceMqI9LABU9A2LZfqyQ6VSsJmRKAkp7iU6zbFjg18C4z'
      And form field access_token = 'eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJhY3IiOiJTaW5nbGVfRmFjdG9yIiwic2NvcGUiOiJwaG9uZSBvcGVuaWQgcHJvZmlsZSBlbWFpbCIsImF1dGhfdGltZSI6MTYwNTA4MjA5NCwiYW1yIjpbInB3ZCJdLCJpc3MiOiJodHRwczpcL1wvYXV0aC5waW5nb25lLmV1XC9iZmMyZTYxMS04YTAzLTQ4YWItYmRkOC04Yjk5N2JhNTI1NjBcL2FzIiwiZXhwIjoxNjA1MTY4NDk1LCJqdGkiOiIwZWZkNGRmMS1iMzM3LTRlZTctOTJhZS02ZmJlMTkwYjM1ZDYiLCJzaWQiOiJiYjA1OGUxZi0zNDg5LTQ5NTAtODM5MC0wNmNhMWQxZTM1M2UifQ.EhDCGnEE6C_Dj-qqQMxPd_Oa_JDZZYNfomHsOYd1PdsfQlX9DIA846YYZQ0kX5B-BiAvvvy3SWMeTPD0n_Os8l0K_hZeH8Wg-Z1clvcXX0nqRLa86xzESU4AMZYzmvhrJKsSqn9QXKvxZHWyqLdvd5UE7znCr5BVFWpXQ_LeEtQEBF11J2mRTthZ3DCEWt8tZEcdXXuDKiBwDKfzj-CfFm7eXJ7cLkB4OT88gschaIjSnmxSev1onqrj6yUPOE0FJAjsSY_uom9a6HKDy6YNCuFEaZgq6ZTbDXroC2TomxuvJkd4otnSbFcq4noFM_UXszj9Pe_jOQ1BIyGsAwQi4g'
      And form field refresh_token = 'eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJhY3IiOiJTaW5nbGVfRmFjdG9yIiwic2NvcGUiOiJwaG9uZSBvcGVuaWQgcHJvZmlsZSBlbWFpbCIsImF1dGhfdGltZSI6MTYwNTA4MjA5NCwiYW1yIjpbInB3ZCJdLCJpc3MiOiJodHRwczpcL1wvYXV0aC5waW5nb25lLmV1XC9iZmMyZTYxMS04YTAzLTQ4YWItYmRkOC04Yjk5N2JhNTI1NjBcL2FzIiwiZXhwIjoxNjA1MTY4NDk1LCJqdGkiOiIwZWZkNGRmMS1iMzM3LTRlZTctOTJhZS02ZmJlMTkwYjM1ZDYiLCJzaWQiOiJiYjA1OGUxZi0zNDg5LTQ5NTAtODM5MC0wNmNhMWQxZTM1M2UifQ.EhDCGnEE6C_Dj-qqQMxPd_Oa_JDZZYNfomHsOYd1PdsfQlX9DIA846YYZQ0kX5B-BiAvvvy3SWMeTPD0n_Os8l0K_hZeH8Wg-Z1clvcXX0nqRLa86xzESU4AMZYzmvhrJKsSqn9QXKvxZHWyqLdvd5UE7znCr5BVFWpXQ_LeEtQEBF11J2mRTthZ3DCEWt8tZEcdXXuDKiBwDKfzj-CfFm7eXJ7cLkB4OT88gschaIjSnmxSev1onqrj6yUPOE0FJAjsSY_uom9a6HKDy6YNCuFEaZgq6ZTbDXroC2TomxuvJkd4otnSbFcq4noFM_UXszj9Pe_jOQ1BIyGsAwQi4g'
      When method POST
      Then status 200

      * def accessToken = response.access_token

      Given path ''
      And header Authorization = 'Bearer' + accessToken
      When method GET
      Then status 200