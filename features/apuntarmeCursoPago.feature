Feature: Register for a paid course
    As a  user of rottweiler Academy
    I want to take a paid course
    
    Scenario: Start a paid course successfully
        Given I am on the login page
        When I enter the username "alejandrafv5@gmail.com"
        And I enter the password "alejandra1"
        And I press the button "Acceder"
        And I press Cursos
        Then I select Como hacer milkshakes
        And I press button Apuntarme

    Scenario: Confirm that the course was added to my shopping cart
        Given I am on the login page
        When I enter the username "alejandrafv5@gmail.com"
        And I enter the password "alejandra1"
        And I press the button "Acceder"
        Then I press logo button of shopping cart
        And I am looking for this course Como hacer milkshakes
    