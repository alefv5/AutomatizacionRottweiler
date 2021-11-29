#I am on the register page
Given(/^I am on the register page$/) do
	page.driver.browser.manage.window.maximize
    visit 'https://www.r-acad.com/registro/'
end

#And I click on button Crear una cuenta
When(/^I click on button "([^"]*)"$/) do |buttonName|
    click_button(buttonName)
  end

#When I enter blank in Correo electronico
When(/^I enter blank in Correo electronico$/) do
	fill_in 'signup_email', :with => ""
end

#Then I get a message invalid email "Por favor, introduce una dirección de correo electrónico válida."
Then(/^I get a message invalid email "([^"]*)"$/) do |message|
    page.has_content?(message)
end

#Then I get a message email in use "Lo siento, esta dirección de email ya está en uso"
Then(/^I get a message email in use "([^"]*)"$/) do |message|
    page.has_content?(message)
end

#When I enter "ale.bellota00@hotmail" in Correo electronico
When(/^I enter "([^"]*)" in Correo electronico$/) do |email|
    fill_in 'signup_email', :with => email
end

#And I enter "alejandra2" in contraseña
When(/^I enter "([^"]*)" in contraseña$/) do |password|
    fill_in 'signup_password', :with => password
end

#And I enter "alejandra" in Confirmar contraseña
When(/^I enter "([^"]*)" in Confirmar contraseña$/) do |passwordConfirm|
    fill_in 'signup_password_confirm', :with => passwordConfirm
end

#Then I get the message because the passwords do not match "Las contraseñas ingresadas no coinciden."
Then(/^I get the message because the passwords do not match "([^"]*)"$/) do |message|
    page.has_content?(message)
end

#When I enter the required filds
#Then I get a message "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."
