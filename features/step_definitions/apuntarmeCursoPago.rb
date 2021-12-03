#And I press Cursos
When(/^I press Cursos$/) do
    find(:xpath, '/html/body/div[1]/header/div[1]/nav/div/ul/li[2]/a').click
end

#And I select <course>
Then(/^I select "([^"]*)"$/) do |course|
    find(:xpath, '//div[@id="course-dir-list"]/ul/li/div/div/h2/a', :text => course).click
end

#And I press button Apuntarme
Then(/^I press button Apuntarme$/) do
    find(:xpath, '//div/div[@class="bb-button-wrap"]/div/a[text()="Apuntarme"]').click
end

#And I press button Añadir al carrito
Then(/^I press button Añadir al carrito$/) do
    find(:xpath, '//form/button[text()="Añadir al carrito"]').click
end

