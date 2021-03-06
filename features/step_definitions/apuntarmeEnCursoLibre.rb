# And I press the button Inicio Curso
Then(/^I press the button Inicio Curso$/) do
    find(:xpath, '//div/div[@class="bb-button-wrap"]/div/a[text()=" Inicio Curso "]').click
end

#Then I press the button menu
Then(/^I press the button menu$/) do
    find(:xpath, '//aside/header/a/i').click
end

#And I select Mis cursos
Then(/^I select Mis cursos$/) do
    find(:xpath, '//aside/div/div/ul/li/a/span[text()="Mis Cursos"]').click
    sleep 2
end

#And I am looking for this course <course>
Then(/^I am looking for this course in Mis cursos "([^"]*)"$/) do |course|
    find(:xpath, '//form/div/div/ul/li/div/div/h2/a', :text => course).should be_visible
    sleep 2
end
