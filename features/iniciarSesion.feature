Feature: Login to rottweiler Academy page
    As a user of rottweiler Academy
    I want to test login page
    So I can take the courses on the rottwiler page

    Scenario: Login with username and password correct
        Given I am on the login page
        When I enter the username "alejandrafv5@gmail.com"
        And I enter the password "alejandra1"
        And I press the button "Acceder"
        Then I go to the homepage 

    Scenario: Login with username incorrect
        Given I am on the login page
        When I enter the username "alejandra5@gmail.com"
        And I enter the password "alejandra1"
        And I press the button "Acceder"
        Then I get an error message for the username "Error: El nombre de usuario alejandra5@gmail.com no está registrado en este sitio. Si no estás seguro de tu nombre de usuario, prueba con tu dirección de correo electrónico en su lugar."

    Scenario: Login with password incorrect
        Given I am on the login page
        When I enter the username "alejandrafv5@gmail.com"
        And I enter the password "alejandr1"
        And I press the button "Acceder"
        Then I get an error message for the password "Error: la contraseña que has introducido para la dirección de correo electrónico alejandrafv5@gmail.com no es correcta. ¿Has olvidado tu contraseña?" 

    