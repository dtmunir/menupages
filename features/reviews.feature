Feature: Restaurant Reviews
  In order to help users pick the best restaurants
  Users should be able to add reviews 

  Scenario: Add a new review
    Given a restaurant with name "Hampton Chutney Co." and address "Lafayette and Prince" exists
    When I visit the home page
    And I click on "Hampton Chutney Co."
    And I click on "Add Review"
    And I enter a review
    And I save the review
    Then I should see the review
