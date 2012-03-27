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

 Scenario: Search Twitter with known results
    Given Twitter responds to the search "#rails" with the tweets:
      | text                     |
      | #Rails is amazing        |
      | I love #rails            |
      | #rails is annoying today |
      | WHY #RAILS WHY?!?!       |
    And Twitter responds to the search "#ruby" with the tweets:
      | text           |
      | #ruby is great |
    When I search for hash tag "rails"
    Then I should see the following tweets:
      | #Rails is amazing        |
      | I love #rails            |
      | #rails is annoying today |
      | WHY #RAILS WHY?!?!       |
    But I should not see the following tweets:
      | #ruby is great |

