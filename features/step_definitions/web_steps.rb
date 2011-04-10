
When /^I fill in "([^"]*)" in the "([^"]*)"$/ do |value, field|
  fill_in(field,:with=>value)
end

When /^I click on "([^"]*)"$/ do |button_name|
  click_button(button_name)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end
