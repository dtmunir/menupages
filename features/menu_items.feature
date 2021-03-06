Feature: Menu Items
  Menus should have different items
  Users should be able to view, add and delete menu items
  In order to have a better user experience
  The menu items should have images 


  Background:
    Given a restaurant with name "Hampton Chutney Co." and address "Lafayette and Prince" exists
    Given there exists a menu  with name "lunch" for restaurant "Hampton Chutney Co."

  Scenario: Adding a menu item
    When I visit the menus page
    And I click on "lunch Hampton Chutney Co."
    And I click on "Add Menu Item"
    And I fill in name and price with "Tomato Soup" and "4"
    And I hit save
    Then I should see the text "Tomato Soup"

  Scenario: Deleting a menu item
    Given there exists a menu item with name "Grilled Cheese" and price "8" for menu "lunch"
    When I visit the menus page
    And I click on "lunch Hampton Chutney Co."
    And I click on "Delete"
    And I visit the menus page
    And I click on "lunch Hampton Chutney Co."
    Then I should not see the text "Grilled Cheese"

  Scenario: Changing a menu item

  Scenario: Seeing child menu items on the menu page
    Given there exists a menu item with name "Grilled Cheese" and price "8" for menu "lunch"
    When I visit the menus page
    And I click on "lunch Hampton Chutney Co."
    Then I should see the text "Grilled Cheese"

  Scenario: Adding a menu item with an image
    When I visit the menus page
    And I click on "lunch Hampton Chutney Co."
    And I click on "Add Menu Item"
    And I fill in name and price with "Tomato Soup" and "4"
    
    And I select an image "Tomato.png"
    And I hit save
    Then I should see the image

