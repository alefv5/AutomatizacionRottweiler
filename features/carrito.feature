Feature: Shopping cart of Academy page
    As a person I want to see my shopping cart
    I want to test my cart
    So make the shopping cart work well for users

    Scenario Outline: Added one course in shopping cart
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

    Scenario Outline: Find a course in shopping cart
        Given I am on the login page
        When I enter the email and password
        And I press the button "Acceder"
        Then I press logo button of shopping cart
        And I am looking for this course <course>

    Examples:
        |course                                     |
        |"Como hacer milkshakes"                    |

    Scenario: Delete a course from the shopping cart logo
        Given I am on the login page
        When I enter the email and password
        And I press the button "Acceder"
        Then I press logo button of shopping cart
        And I press the button to delete the course Como hacer milkshakes 
        And I press logo button of shopping cart
        
    Scenario: Confirm that there cannot be more than one of the same course in shopping cart
        Given I am on the login page
        When I enter the email and password
        And I press the button "Acceder"
        And I press Cursos
        Then I select "Curso completo de Photoshop desde Cero"
        And I press button Apuntarme
        And I press button Añadir al carrito
        And I get an error message "No puedes añadir otro «Curso completo de Photoshop desde Cero» a tu carrito."
    
  
