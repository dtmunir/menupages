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

Then(/^I choose rating "(.*?)"$/) do |rating|
  choose(rating)
end

When(/^I hit save/) do
  click_button("Create Menu item")
end

When(/^I save the review/) do
  click_button("Create Review")
end

Then(/^I should see the review "(.*?)" and rating "(.*?)"/) do |comment, rating|
  page.should have_content comment
  page.should have_content rating
end

Then(/^I should not see the text "(.*?)"$/) do |text|
  page.should_not have_content text
end

When(/^I add multiple reviews for "(.*?)"/) do |r_name|
  #r = Restaurant.where(:name => restaurant_name)
  r = Restaurant.where(:name => r_name)[0]
  rw1 = Review.create(:restaurant => r, :name => "Syed Hossein Nasr", :comment => "It was great, wish it was halal", :rating => 4 )
  rw2 = Review.create(:name => "Juan Cole", :comment => "I'm not too keen on this.", :rating => 1, :restaurant => r)
  rw3 = Review.create(:name => "Reza Aslan", :comment => "I love ALL of the chutneys.", :rating => 4, :restaurant => r)
end

When(/^I select an image "(.*?)"$/) do |arg1|
  attach_file("Image", "#{Rails.root}/features/fixtures/sushi.png")
end

Then(/^I should see the image$/) do
  page.should have_selector("img[src$='sushi.png']")
end

Then(/^I should see the average of the scores on the reviews/) do
  restaurant = Restaurant.where(:name => "Hampton Chutney Co.")[0]
  sum = 0
  restaurant.reviews.each do |r|
    sum += r.rating
  end
  average = sum / restaurant.reviews.count
  average.round(2)
  page.should have_content average.to_s
end


When(/^I fill in "(.*?)" with "(.*?)"/) do |text, arg|
  fill_in text, :with => arg
end

When(/^I click "(.*?)"$/) do |button|
  click_button(button)
end

Given(/^a valid user$/) do
  user = User.create! ({:email => "k@g.com", 
                        :password => "12345678",
                        :password_confirmation => "12345678"})
end

Given(/^a valid admin$/) do
  user = User.create! ({:email => "k@a.com", 
                        :password => "12345678",
                        :password_confirmation => "12345678"})
  user.add_role "admin"
  user.save
  puts Ability.new(user).can? :manage, :all
end

