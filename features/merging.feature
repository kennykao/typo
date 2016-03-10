Feature: Merging articles 
  As a blog administrator
  I want to be able to merge articles if I'm an administrator
  I also should not be able to merge if I am not an admin, even though I want to

    Given the following articles exist:
    | title     | author | body   | 
    | Article A | Kenny  | abcdef |
    | Article B | Eric   | ghijkl |

    Given the following comments exist for article "Article B":
    | body  | 
    | hello |
    | world |

  Scenario: non-admin cannot merge articles:
    When I am on the view page for "Article A"
    And the current user is not "admin"
    Then I should not see "Merge With This Article"

  Scenario: admin can merge articles
    When I am on the view page for "Article A"
    And the current user is "admin"
    Then I should see "Merge With This Article"
    And I merge "Article A" with "Article B"
    Then I should see "abcdef" and "ghijkl"
    And the author should either be "Kenny" or "Eric"
    And the title should either be "Article A" or "Article B"
    And I should see "hello" and "world"
  
