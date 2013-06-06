Feature: Restaurant Reviews
  In order to help users pick the best restaurants
  Users should be able to add reviews 

  Scenario: Add a new review
    Given a restaurant with name "Hampton Chutney Co." and address "Lafayette and Prince" exists
    When I visit the home page
    And I click on "Hampton Chutney Co."
    And I click on "Add Review"
    And I enter a review with name "Abeer Minhas" and comment "It was great" and rating "review_rating_4"
    And I save the review
    Then I should see the review "It was great" and rating "4"

  Scenario: Restaurant review scores are averaged and displayed on home page
    Given a restaurant with name "Hampton Chutney Co." and address "Lafayette and Prince" exists
    When I add multiple reviews for "Hampton Chutney Co."
    And I visit the home page
    Then I should see the average of the scores on the reviews