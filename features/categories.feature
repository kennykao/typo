Feature: Create and Edit Categories
  As a blog administrator
  I want the categories link to work for me

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    When I follow "Categories"

  Scenario: Link should not be broken
    Then I should see "Categories""

  Scenario: It should be possible to create new categories
    When I fill in "Name" with "Category cool"
    And I press "Save"
    Then I should see "Category cool"
    