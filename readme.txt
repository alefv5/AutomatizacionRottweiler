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