Feature: Menu Items
  Menus should have different items
  Users should be able to view, add and delete menu items


  Scenario: Adding a menu item

  Scenario: Deleting a menu item

  Scenario: Changing a menu item

  Scenario: Seeing child menu items on the menu page
    Given a restaurant with name "Hampton Chutney Co." and address "Lafayette and Prince" exists
    Given there exists a menu  with name "lunch" for restaurant "Hampton Chutney Co."
    Given there exists a menu item with name "Grilled Cheese" and price "8" for menu "lunch"
    When I visit the menus page
    And I click on "lunch Hampton Chutney Co."
    Then I should see the text "Grilled Cheese"