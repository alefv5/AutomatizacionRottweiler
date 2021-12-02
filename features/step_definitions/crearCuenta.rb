#I am on the register page
Given(/^I am on the register page$/) do
	page.driver.browser.manage.window.maximize
    visit 'https://www.r-acad.com/registro/'
end

#And I click on button Crear una cuenta
When(/^I click on button "([^"]*)"$/) do |buttonName|
    click_button(buttonName)
  end

#And I enter "alejandra2" in contraseña
When(/^I enter "([^"]*)" in contraseña$/) do |password|
    fill_in 'signup_password', :with => password
end

#And I enter "alejandra" in Confirmar contraseña
When(/^I enter "([^"]*)" in Confirmar contraseña$/) do |passwordConfirm|
    fill_in 'signup_password_confirm', :with => passwordConfirm
end

#When I enter the required filds
When(/^I enter the required filds$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
        when "Correo electronico"
            fill_in 'signup_email', :with => value
        when "Contraseña"
            fill_in 'signup_password', :with => value
        when "Confirmar contraseña"
            fill_in 'signup_password_confirm', :with => value
        when "Nombre"
            fill_in 'field_1', :with => value
        when "Apellido"
            fill_in 'field_2', :with => value
        when "Nombre de usuario"
            fill_in 'field_3', :with => value
        end
    end
end 

	
#Then I get a message email "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."
Then(/^I get a message "([^"]*)"$/) do |message|
    page.has_content?(message)
end


# When I enter that <email> in Correo electronico
When(/^I enter that "([^"]*)" in Correo electronico$/) do |email|
    fill_in 'signup_email', :with => email
end

