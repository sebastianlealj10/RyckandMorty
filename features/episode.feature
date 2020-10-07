Feature: Rick and Morty episode endpoint
  Scenario: The Rick and Morty episode endpoint is alive
    Given the endpoint "episode"
    When the User requests it
    Then the status code is "200"

  Scenario: The Rick and Morty episode endpoint responds with the right header
    Given the endpoint "episode"
    When the User requests it
    Then the response header for Content-type is "application/json; charset=utf-8"

  Scenario: The Rick and Morty episode endpoint responds with the right name content
    Given the endpoint "episode"
    And the value "Pilot"
    When the User requests it
    Then the response content is correct