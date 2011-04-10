Given /^that there is a restaurant called "([^"]*)"$/ do |restaurant_name|
  restaurant = Restaurant.create(:name=>restaurant_name)
end

Given /^I am on the "([^"]*)" restaurant page$/ do |restaurant_name|
  restaurant = Restaurant.find_by_name(restaurant_name)
  visit restaurant_path(restaurant)
end


Then /^There should be (\d+) review for "([^"]*)"$/ do |no_of_reviews, restaurant_name|
  restaurant=Restaurant.find_by_name(restaurant_name)
  restaurant.reviews.count == no_of_reviews.to_i
end
Then /^I should be on "([^"]*)" restaurant page$/ do |restaurant_name|
  restaurant = Restaurant.find_by_name(restaurant_name)
  current_path.should == restaurant_path(restaurant)
end

