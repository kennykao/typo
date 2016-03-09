Feature: Merging articles 
  As a blog administrator
  I want to be able to merge articles if I'm an administrator
  I also should not be able to merge if I am not an admin, even though I want to
  
    Given the following articles exist:
    | title     | 
    | Article A |
    | Article B |
  
  Scenario: non-admin cannot merge articles:
  When I am on the view page for "Article A"
  And the current user is not "admin"
  Then I should not see "Merge With This Article"

Scenario: admin can merge articles
  When I am on the view page for "Article A"
  And the current user is "admin"
  Then I should see "Merge With This Article"
  And I merge "Article A" with "Article B"
  Then the text should be the same
  And the author should either be "Kenny" or "Also Kenny"
  And the title should either be "Article A" or "Article B"
