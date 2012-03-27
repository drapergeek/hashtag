Feature: Search twitter
  In order to be able to easily search twitter
  As a user
  I should be able to search for a hashtag

  Scenario: Search for a term
    When I search for "rails"
    Then I should see "You searched for #rails"
    Then I should see tweets with "#rails" in them

