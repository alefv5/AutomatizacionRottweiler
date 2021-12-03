#I am on the login page
Given(/^I am on the login page$/) do
	page.driver.browser.manage.window.maximize
    visit 'https://www.r-acad.com/wp-login.php'
end

#When I enter the username and password
When(/^I enter the email and password$/) do
  fill_in 'user_login', :with => ENV['USER']
  fill_in 'user_pass', :with => ENV['PSW']
end

#When I enter the username "alejandrafv5@gmail.com"
When(/^I enter the username "([^"]*)"$/) do |userName|
    fill_in 'user_login', :with => userName
end

#And I enter the password "alejandra1"
When(/^I enter the password "([^"]*)"$/) do |password|
    fill_in 'user_pass', :with => password
end

#And I press the button "Acceder"
When(/^I press the button "([^"]*)"$/) do |buttonName|
    click_button(buttonName)
  end


#Then I get an error message 
Then(/^I get an error message "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
  end

#Then My name <Name> is on the home page
Then(/^My name "([^"]*)" is on the home page$/) do |name|
  expect(page).to have_content(name)
  sleep 5
end
