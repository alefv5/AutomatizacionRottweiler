Feature: Register in a free course
    As a  user of rottweiler Academy
    I want to take a course free
    So I can pass the course for free

    Scenario Outline: Start a free course successfully
        Given I am on the login page
        When I enter the email and password
        And I press the button "Acceder"
        Then I press Cursos
        And I select <course>
        And I press the button Inicio Curso
    
     Examples:
        |course                                 |
        |"Curso básico de Robótica con Arduino" |
    
    Scenario Outline: Confirm that the course was added to My courses
        Given I am on the login page
        When I enter the email and password
        And I press the button "Acceder"
        Then I press the button menu
        And I select Mis cursos
        And I am looking for this course in Mis cursos <course>
    Examples:
        |course                                 |
        |"Curso básico de Robótica con Arduino" |