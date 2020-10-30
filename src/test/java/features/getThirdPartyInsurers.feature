# The way an API works is through a contract. First there is a request which includes an endpoint, a header and a body
  # The service responds with its own set of headers, body and also a status code
Feature: Get Third Party Insurers
  Background:
    * url 'https://hfportaldev.azure-api.net/'

  Scenario: Get Third Party Insurers
    
    Given path 'hf-recoveries/tpis/'
    And header Authorization = 'Bearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYwMzk0NTcxMywiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjAzOTQyMTEzLCJjbGllbnRfaWQiOiJhZmViZDRhNC0yN2Q4LTRlZjAtYWMzMS0wN2JjOTJjMGVkYWQiLCJzaWQiOiIyMDg1YTQzYy1lNTg0LTQxMmQtYTU4My0zNjM1ZGEyMzNhOTYifQ.awaY9C-YDsmWWjfL7Ka7ccFdTnJAcWVKQdCSWw4S5fRYvNhEk-IRt_wG7tYtZIOLhqSnIM-yRp6oN9YcCeVvqvBB4jb1D_LrjGjoxE3i-10g134t4OR8J9Hfl6GAcJ831M3hoGvTd94Vj3SdF7gWvxCqRqzJ8ELGd4Fk1yyrtyvZQ9HmaKOmwVubUL6KJ-mkl1TNOYmFiadt0UhO3drDxaYoJIETYmQV2agXvzooUSyd_WpZFcFC_p5qW4gSxWn8O2qWS6pL0zYwvWBLIvG91UHL3jPuvb6aTVc0pJe5zFWQOjTKVBMFnVBPtNXeEgK0hM70lo-vxsg_XwclKDRzbg'
    When method GET
    #We are asserting that our request will be successful (200 status code)
    Then status 200
