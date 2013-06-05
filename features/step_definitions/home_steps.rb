Given(/^a restaurant with name "(.*?)" and address "(.*?)" exists$/) do |r_name, r_address|
  r = Restaurant.new
  r.name  = r_name
  r.address = r_address
  r.save
end

When(/^I visit the home page$/) do
  visit '/'
end

Then(/^I should see the text "(.*?)"$/) do |text|
  page.should have_content text
end


Given(/^there exists a menu  with name "(.*?)" for restaurant "(.*?)"$/) do |menu_name, r_name|
  r = Restaurant.where(:name => r_name)[0]
  m = Menu.new
  m.restaurant = r
  m.name = menu_name
  m.save
end


Given(/^there exists a menu item with name "(.*?)" and price "(.*?)" for menu "(.*?)"$/) do |item_name, item_price, menu_name|
  m = Menu.where(:name => menu_name)[0]
  i = MenuItem.new
  i.menu = m
  i.name = item_name
  i.price = item_price
  i.save
end

When(/^I visit the menus page$/) do
  visit menus_path # '/menus'
end

When(/^I click on "(.*?)"$/) do |link_text|
  click_link link_text
end

When(/^I fill in name and price with "(.*?)" and "(.*?)"/) do |name, price|
  fill_in "Name", :with => name
  fill_in "Price", :with => price
end

When(/^I enter a review with name "(.*?)" and comment "(.*?)" and rating "(.*?)"/) do |name, comment, rating|
  fill_in "Name", :with =>name 
  fill_in "Write your review", :with => comment 
  choose(rating)
end

When(/^I hit save/) do
  click_button("Create Menu item")
end

When(/^I save the review/) do
  click_button("Create Review")
end

Then(/^I should see the review "(.*?)" and rating "(.*?)"/) do |comment, rating|
  puts page.body
  page.should have_content comment
  page.should have_content rating
end

Then(/^I should not see the text "(.*?)"$/) do |text|
  page.should_not have_content text
end



