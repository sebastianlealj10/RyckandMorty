Feature: Rick and Morty character endpoint
  Scenario: The Rick and Morty character endpoint is alive
    Given the endpoint "character"
    When the User requests it
    Then the status code is "200"

  Scenario: The Rick and Morty character endpoint responds with the right header
    Given the endpoint "character"
    When the User requests it
    Then the response header for Content-type is "application/json; charset=utf-8"

  Scenario: The Rick and Morty character endpoint responds with the right name content
    Given the endpoint "character"
    And the value "Rick"
    When the User requests it
    Then the response content is correct