Feature: Obtain access token once

  Background:
    * def baseUrl = 'https://tame-violante-ayyildizfatih-50bbd5b4.koyeb.app'
    Given url baseUrl
    And path '/api/v1/auth/email/login'
    And request { email: 'test1@example.com', password: 'secret' }
    When method POST
    Then status 200
    And match response contains { token: '#notnull' }
    * def token = response.token

  Scenario: 2 equal to 2
    match 2 2