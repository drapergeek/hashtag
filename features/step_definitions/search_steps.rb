When /^I search for "([^"]*)"$/ do |search_term|
  visit "/#{search_term}"
end

Then /^I should see "([^"]*)"$/ do |search_header|
  page.should have_css("h2", text:search_header)
end

Then /^I should see tweets with "([^"]*)" in them$/ do |search_term|
  page.should have_css("li.tweet", search_term)
end

When /^I go to the search page$/ do
  visit '/'
end

When /^I enter "([^"]*)" in the search box and submit$/ do |search_term|
  fill_in "Search", with: search_term
  click_button "Search"
end

When /^I enter "([^"]*)" in the search box$/ do |search_term|
  fill_in "Search", with: search_term
end

Given /^Twitter responds to the search "([^"]*)" with the tweets:$/ do |arg1, table|
  TwitterMock.stub_search_response(search_term, table.hashes)
end

When /^I search for hash tag "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the following tweets:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Then /^I should not see the following tweets:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

