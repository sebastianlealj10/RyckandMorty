Feature: Rick and Morty location endpoint
  Scenario: The Rick and Morty location endpoint is alive
    Given the endpoint "location"
    When the User requests it
    Then the status code is "200"

  Scenario: The Rick and Morty location responds with the right header
    Given the endpoint "location"
    When the User requests it
    Then the response header for Content-type is "application/json; charset=utf-8"

 Scenario: The Rick and Morty location responds with the right name content
    Given the endpoint "location"
    And the value "Earth"
    When the User requests it
    Then the response content is correct