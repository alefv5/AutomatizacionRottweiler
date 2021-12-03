Feature: Login to rottweiler Academy page
    As a user of rottweiler Academy
    I want to test login page
    So I can take the courses on the rottwiler page

    Scenario Outline: Login with username and password correct
        Given I am on the login page
        When I enter the email and password
        And I press the button "Acceder"
        Then My name <name> is on the home page

    Examples:
    |name|
    |"Monica"|

    Scenario Outline: Login with username incorrect
        Given I am on the login page
        When I enter the username <email>
        And I enter the password <password> 
        And I press the button "Acceder"
        Then I get an error message <message>

        Examples:
        |email                       ||password     ||message                                                                                                                                                |                                   
        |"alejandra5@gmail.com"      ||"alejandra1" ||"Dirección de correo electrónico desconocida. Compruébala de nuevo o inténtalo con tu nombre de usuario."                                              |
        |"alejandrafv5@gmail.com"    ||"alejandr1"  ||"Error: la contraseña que has introducido para la dirección de correo electrónico alejandrafv5@gmail.com no es correcta. ¿Has olvidado tu contraseña?" |


