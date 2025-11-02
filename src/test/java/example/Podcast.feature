Feature:Podcast endpoint tests

  Background:
    * def auth = call read('Token.feature')

  Scenario: Get all podcasts
    Given url auth.baseUrl
    Given headers { Authorization: #('Bearer ' + auth.token) }
    When path '/api/v1/podcasts'
    When method GET
    Then status 200

  Scenario: /me endpoint should return ok
    * print auth.token
    Given url auth.baseUrl
    Given headers { Authorization: #('Bearer ' + auth.token) }
    And path '/api/v1/auth/me'
    When method GET
    Then status 200
