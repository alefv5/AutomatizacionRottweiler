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
    
Feature: Register for a paid course
    As a  user of rottweiler Academy
    I want to take a paid course
    
    Scenario: Start a paid course successfully
        Given I am logged into the rottweiler page
        When I press "Cursos" button
        And select "Como hacer milkshakes"
        Then I go to the page with the information of the selected course
        And I press button "Añadir al carrito"

    Scenario: Confirm that the course was added to my shopping cart
        Given I am logged into the rottweiler page
        When I press logo button of shopping cart
        Then I am looking for this course "Como hacer milkshakes"
    