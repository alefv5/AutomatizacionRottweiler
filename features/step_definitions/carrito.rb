#Then I press logo button of shopping cart
Then(/^I press logo button of shopping cart$/) do
    sleep 10
    find(:xpath, '//div[@id="header-aside"]/div/div[@class="notification-wrap header-cart-link-wrap cart-wrap menu-item-has-children"]/a').click
    sleep 10
end

#And I am looking for this course <course>
Then(/^I am looking for this course "([^"]*)"$/) do |course|
    find(:xpath, '//div[@class="notification-wrap header-cart-link-wrap cart-wrap menu-item-has-children selected"]/section/div/ul/li',:text => course).should be_visible
end


# And I press the button to delete the course <course>
Then(/^I press the button to delete the course Como hacer milkshakes$/) do 
    xpath = '//div[@class="notification-wrap header-cart-link-wrap cart-wrap menu-item-has-children selected"]/section/div/ul/li/a[text()="Como hacer milkshakes						"]/parent::li/a[text()="×"]'
    find(:xpath,xpath).click
 end


