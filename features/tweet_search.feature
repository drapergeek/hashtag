Feature: Search twitter
  In order to be able to easily search twitter
  As a user
  I should be able to search for a hashtag

  Scenario: Search for a term
    When I search for "rails"
    Then I should see "You searched for #rails"
    Then I should see tweets with "#rails" in them

 @javascript
 Scenario: Ajax Search for a term
    When I go to the search page
    And I enter "ruby" in the search box and submit
    Then I should see tweets with "ruby" in them
    
 @javascript
 Scenario: Ajax search without clicking
    When I go to the search page
    And I enter "thoughtbot" in the search box
    Then I should see tweets with "thoughtbot" in them



