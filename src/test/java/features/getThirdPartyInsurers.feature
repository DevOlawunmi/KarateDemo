Feature: Get Third Party Insurers
  Background:
    * url 'https://hfportaldev.azure-api.net/'

  Scenario: Third Party Insurers
    
    Given path 'hf-recoveries/tpis/'
    And header Authorization = 'Bearer eyJraWQiOiJkZWZhdWx0IiwiYWxnIjoiUlMyNTYifQ.eyJhdWQiOiJodHRwczpcL1wvYXBpLnBpbmdvbmUuZXUiLCJzdWIiOiI0M2VkM2FjMC1hMmQ1LTQ5NDAtODIzYS1kOWI2NDU1YTNkYzgiLCJvcmciOiJkOTI4ZmY4OC1lZjQ4LTQyMWUtYjNkNy1hYjQzMGFkMTI1MzciLCJzY29wZSI6InBob25lIG9wZW5pZCBwcm9maWxlIGVtYWlsIiwiaXNzIjoiaHR0cHM6XC9cL2F1dGgucGluZ29uZS5ldVwvYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwXC9hcyIsImV4cCI6MTYwMzg5NDcxOCwiZW52IjoiYmZjMmU2MTEtOGEwMy00OGFiLWJkZDgtOGI5OTdiYTUyNTYwIiwiaWF0IjoxNjAzODkxMTE4LCJjbGllbnRfaWQiOiJhZmViZDRhNC0yN2Q4LTRlZjAtYWMzMS0wN2JjOTJjMGVkYWQiLCJzaWQiOiJmNzI1MTNmOC1jZGJkLTQ0MDAtYjVkZC03YTU4N2Q2Y2M4MTQifQ.RduysMMBgUO5uiTz8nZiJif2280ooy7UpBRN3z6wi0IL0Xss_Nq6s-yDpcQLKvlTqYpG3pJ-sdXcEqf-ZminZZmuRixRUggFkOJMLxPmw3DWJeJCjHqTHWXytWQBV2LB8CGK7Dee6O5tWhHGfbBnB5wS_YtgfzqqsA6puEpimXhiEuAQOHhSyX6ZWxxLkDHrt1yktQdijX-iwanJ6n4rKoTlK5hWWpwc1mJkP6TQOqR_0ikv4i5PdBvn9Us0Y0huBfP3pkPUUj34mcfAqjkwLvLqYFfCrCoE3YyyqpDuJhMV7hodWRL2MrV9FXf-ThIIrCKLziaEVRtrNc6ZiiJX0g'
    When method GET
    Then status 200