#And I press Cursos
When(/^I press Cursos$/) do
    find(:xpath, '/html/body/div[1]/header/div[1]/nav/div/ul/li[2]/a').click
end

#And I select Como hacer milkshakes
Then(/^I select Como hacer milkshakes$/) do
    find(:xpath, '//div/div/ul[@class="bb-course-items grid-view bb-grid"]/li/div/div/h2/a[@title = "Como hacer milkshakes"]').click
end

#And I press button Apuntarme
Then(/^I press button Apuntarme$/) do
    find(:xpath, '//div/div[@class="bb-button-wrap"]/div/a[text()="Apuntarme"]').click
end

#Then I press logo button of shopping cart
Then(/^I press logo button of shopping cart$/) do
    find(:xpath, '/html/body/div[1]/header/div[1]/div[2]/div/div[2]/a').click
end

#And I am looking for this course "Como hacer milkshakes"
Then(/^I am looking for this course Como hacer milkshakes$/) do
    find(:xpath, '//*[@id="header-aside"]/div/div[2]/section/div/ul/li/a[2]').should be_visible
    sleep 2
end
