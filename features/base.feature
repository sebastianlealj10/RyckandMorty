Feature: Rick and Morty Base URL
  Scenario: The Rick and Morty Base URL is alive
    Given the endpoint "/"
    When the User requests it
    Then the status code is "200"

  Scenario: The Rick and Morty Base URL responds with the right header
    Given the endpoint "/"
    When the User requests it
    Then the response header for Content-type is "application/json; charset=utf-8"
