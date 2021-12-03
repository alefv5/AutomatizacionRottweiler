To run the features run:
cucumber --init --publish-quiet

cucumber features/apuntarmeCursoPago.feature --publish-quiet
cucumber features/crearCuenta.feature --publish-quiet
cucumber features/iniciarSesion.feature --publish-quiet
cucumber features/apuntarmeEnCursoLibre.feature --publish-quiet
cucumber features/carrito.feature --publish-quiet

Para el test de: Create an account with correct data, se debe cambiar la informacion ya que ya se creo el usuario con ese correo y esos datos
y si no se cambia dara error ya que no se puede crear varios usuarios con la misma cuenta o con el mismo nombre de usuario
Se recomienda cambiar el correo y el nombre de usuario en este test

Para el test de: Delete a course from the shopping cart logo; para confirmar que se elimino el test correctamente si aumentamos 
I am looking for this course "Como hacer milkshakes" y deberia fallar ese step ya que ese curso ya no se encuentra en el carrito

Recomendacion: para que los tests den correctamente se debe confirmar que no existan cursos ningun curso en el carrito y si existe
hay q eliminarlos y recien hacer correr los tests