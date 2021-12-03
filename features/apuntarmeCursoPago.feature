Feature: Register for a paid course
    As a  user of rottweiler Academy
    I want to take a paid course
    So I can pass the course for paid
    
    Scenario Outline: Start a paid course successfully
        Given I am on the login page
        When I enter the email and password
        And I press the button "Acceder"
        And I press Cursos
        Then I select <course>
        And I press button Apuntarme
        And I press button Añadir al carrito
        And I press logo button of shopping cart
    Examples:
        |course                                   |
        |"Curso completo de Photoshop desde Cero" |
        |"Como hacer milkshakes"                  |

    Scenario: Confirm that the course was added to my shopping cart
        Given I am on the login page
        When I enter the email and password
        And I press the button "Acceder"
        Then I press logo button of shopping cart
        And I am looking for this course <course>
    
    Examples:
        |course                                  |
        |"Curso completo de Photoshop desde Cero"|
        |"Como hacer milkshakes"                 |
