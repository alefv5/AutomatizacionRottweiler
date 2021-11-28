Feature: Register in a free course
    As a  user of rottweiler Academy
    I want to take a course free

    Scenario: Start a free course successfully
        Given I am logged into the rottweiler page
        When I press "Cursos" button
        And select "Curso básico de Robótica con Arduino"
        Then I go to the page with the information of the selected course
        And I press button "Inicio Curso"
    
    Scenario: Confirm that the course was added to My courses
        Given I am logged into the rottweiler page
        When I press the button menu
        And select "Mis cursos"
        Then I am looking for this course "Curso básico de Robótica con Arduino"
    
