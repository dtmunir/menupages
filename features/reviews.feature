Feature: Restaurant Reviews
  In order to help users pick the best restaurants
  Users should be able to add reviews 

  Scenario: Add a new review
    Given a restaurant with name "Hampton Chutney Co." and address "Lafayette and Prince" exists
    When I visit the home page
    Given a valid user
    And I click on "Login"
    And I fill in "Email" with "k@g.com"
    And I fill in "Password" with "12345678"
    And I click "Sign in"
    And I click on "Hampton Chutney Co."
    And I click on "Add Review"
    And I fill in "Write your review" with "It was great"
    Then I choose rating "review_rating_4"
    And I save the review
    Then I should see the review "It was great" and rating "4"

  Scenario: Restaurant review scores are averaged and displayed on home page
    Given a restaurant with name "Hampton Chutney Co." and address "Lafayette and Prince" exists
    When I add multiple reviews for "Hampton Chutney Co."
    And I visit the home page
    Then I should see the average of the scores on the reviews