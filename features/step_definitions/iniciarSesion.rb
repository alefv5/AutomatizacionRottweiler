#I am on the login page
Given(/^I am on the login page$/) do
	page.driver.browser.manage.window.maximize
    visit 'https://www.r-acad.com/wp-login.php'
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

#Then I get an error message for the username "Error: El nombre de usuario alejandra5@gmail.com no está registrado en este sitio. Si no estás seguro de tu nombre de usuario, prueba con tu dirección de correo electrónico en su lugar."
Then(/^I get an error message for the username "([^"]*)"$/) do |errorMessage|
    page.has_content?(errorMessage)
    sleep 2
  end

#Then I get an error message for the password "Error: la contraseña que has introducido para la dirección de correo electrónico alejandrafv5@gmail.com no es correcta. ¿Has olvidado tu contraseña?"
Then(/^I get an error message for the password "([^"]*)"$/) do |errorMessage|
    page.has_content?(errorMessage)
    sleep 2
  end