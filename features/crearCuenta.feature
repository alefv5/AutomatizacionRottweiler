Feature: Register to rottweiler Academy page
    As a person who wants to be part of rottweiler Academy
    I want to test Register page

    Scenario: Create an account with correct data
        Given  I am on the register page
        When I enter the required filds
        |Correo electronico  | ale.bellota00@hotmail  |            
        |Contraseña 	     | alejandra2             |
        |Confirmar contraseña| alejandra2             |
        |Nombre 	         | Alejandra              |
        |Apellido            | Verastegui             |	
        |Nombre de usuario 	 | bellota                |
        And I click on button Crear una cuenta
        Then I get a message "Antes de que pueda iniciar sesión, debe confirmar su dirección de correo electrónico a través del correo electrónico que le acabamos de enviar."
    
    Scenario: Create account with empty email field
        Given  I am on the register page
        When I enter blank in Correo electronico
        And I click on button Crear una cuenta
        Then I get a message "Por favor, introduce una dirección de correo electrónico válida."
    
    Scenario: Create an account with an email already registered
        Given  I am on the register page
        When I enter "ale.bellota00@hotmail" in Correo electronico
        And I click on button Crear una cuenta
        Then I get a message "Lo siento, esta dirección de email ya está en uso"

    Scenario: Create an account with an User name already registered
        Given  I am on the register page
        When I enter the required filds
        |Correo electronico  | ale.bellota00@hotmail  |            
        |Contraseña 	     | alejandra2             |
        |Confirmar contraseña| alejandra2             |
        |Nombre 	         | Alejandra              |
        |Apellido            | Verastegui             |	
        |Nombre de usuario 	 | bellota                |
        And I click on button Crear una cuenta
        Then I get a message "Nombre de Usuario ya se ha tomado."

    Scenario: Create an account wit passwords incorrects
        Given  I am on the register page
        When I enter "ale.bellota00@hotmail" in Correo electronico
        And I enter "alejandra2" in contraseña
        And I enter "alejandra" in Confirmar contraseña
        And I click on button Crear una cuenta
        Then I get a message "Las contraseñas ingresadas no coinciden."
        