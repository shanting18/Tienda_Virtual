package persistence.exceptions;

public class UsuarioNoExisteException extends Exception {
    public UsuarioNoExisteException() {
        super("El usuario no existe.");
    }

    public UsuarioNoExisteException(String mensaje) {
        super(mensaje);
    }
}
