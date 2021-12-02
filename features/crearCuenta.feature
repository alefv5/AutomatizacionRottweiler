Feature: Register to rottweiler Academy page
    As a person who wants to be part of rottweiler Academy
    I want to test Register page
    So I can belong to the community of rottweiler Academy

    Scenario: Create an account with correct data
        Given  I am on the register page
        When I enter the required filds
        |Correo electronico  | ale.bellota01@hotmail.com  |            
        |Contraseña 	     | alejandra2                 |
        |Confirmar contraseña| alejandra2                 |
        |Nombre 	         | Alejandra                  |
        |Apellido            | Verastegui                 |	
        |Nombre de usuario 	 | bellota1                   |
        And I click on button "Crear una cuenta"
        Then I get a message "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."
    
    Scenario Outline: Create account with empty email and already register
        Given  I am on the register page
        When I enter the required filds
        |Correo electronico  |  <email>         |            
        |Contraseña 	     | alejandra        |
        |Confirmar contraseña| alejandra2       |
        |Nombre 	         | Alejandra        |
        |Apellido            | Verastegui       |	
        |Nombre de usuario 	 | bellota2         |
        And I click on button "Crear una cuenta"
        Then I get a message <message>

        Examples:
        |email                      ||message                                                             |
        |                           ||"Por favor, introduce una dirección de correo electrónico válida."  |
        |alejandrafv5@gmail.com     ||"Lo siento, esta dirección de email ya está en uso"                 |

    Scenario: Create an account with an User name already registered
        Given  I am on the register page
        When I enter the required filds
        |Correo electronico  | ale.bellota00@hotmail.com  |            
        |Contraseña 	     | alejandra2                 |
        |Confirmar contraseña| alejandra2                 |
        |Nombre 	         | Alejandra                  |
        |Apellido            | Verastegui                 |	
        |Nombre de usuario 	 | bellota                    |
        And I click on button "Crear una cuenta"
        Then I get a message "Nombre de Usuario ya se ha tomado."

    Scenario Outline: Create an account with passwords incorrects
        Given  I am on the register page
        When I enter that "aleja.bellota00@hotmail" in Correo electronico
        And I enter <passwords> in contraseña
        And I enter <confirmPassword> in Confirmar contraseña
        And I click on button "Crear una cuenta"
        Then I get a message <message>
        
        Examples:
        |passwords    ||confirmPassword||message|
        |"alejandra2" ||"alejandra"    ||"Las contraseñas ingresadas no coinciden."|
        |"alejandra"  ||"alejandra"    || " "                                      |