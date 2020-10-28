Feature: User Details

  Background:
    * url 'https://auth.pingone.eu/bfc2e611-8a03-48ab-bdd8-8b997ba52560/as/userinfo'

  Scenario: Get user details

 Given header Authorization = 'Bearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYwMzg5NTE0MiwiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjAzODkxNTQyLCJjbGllbnRfaWQiOiJhZmViZDRhNC0yN2Q4LTRlZjAtYWMzMS0wN2JjOTJjMGVkYWQiLCJzaWQiOiIyMDg1YTQzYy1lNTg0LTQxMmQtYTU4My0zNjM1ZGEyMzNhOTYifQ.NmPbZzzQHQAIRWWvqI7Ig0brQeJx8eQ5Qy3HgK3OG-8A5nkl7bnftKvh1UL1iOoOmazU-97OaGY3W42jjk8nyHe_eIi4rk1FF90OhlcS0u908CjjgAPIAxwfmeh9eVS9vEzElxNeEjOPrfZ_yOT2Na8ajHd9YAynzZgJDCJFbZJp-zMQui8CWeq3YLiI2EmvqsUZvW3f5NzICj3F_wZrbwqE9xrn8JV7HgID3lShpQCA1JhduAh9ItsNq6pc5GSQBiLbUU633mVOq5YIj35KhLvGKABkY0FpZQiVWzCpNzKk4p6m2sf3V8a26LtfGUaevq0pQgLrLbwbguxneQh80Q'
 When method GET
 Then status 200