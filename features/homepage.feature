Feature: Home Page
  Lists all the restaurants for users

  Scenario: All restaurants show up on home page
    Given a restaurant with name "Beijing" and address "37th and Sprurce" exists
    When I visit the home page
    Then I should see the text "Beijing"


