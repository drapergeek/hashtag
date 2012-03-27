When /^I search for "([^"]*)"$/ do |search_term|
  visit "/#{search_term}"
end

Then /^I should see "([^"]*)"$/ do |search_header|
  page.should have_css("h2", text:search_header)
end
j
Then /^I should see tweets with "([^"]*)" in them$/ do |search_term|
  all("li.tweet").each do |tweet_li|
    tweet_li.text.should include(search_term.first)
  end
end

