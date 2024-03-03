package persistence;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import modelo.Usuario;

public class LoginJpaController {
    
    private final EntityManagerFactory emf;
    private final EntityManager em;

    public LoginJpaController() {
        emf = Persistence.createEntityManagerFactory("Tienda_PU");
        em = emf.createEntityManager();
    }
    
    public boolean iniciarSesion(String email, String password) {

        try {
            Usuario usuario = em.createQuery("SELECT u FROM Usuario u WHERE u.email = :email AND u.password = :password", Usuario.class)
                    .setParameter("email", email)
                    .setParameter("password", password)
                    .getSingleResult();
            return usuario != null;
        } catch (Exception e) {
            return false;
        } finally {
            em.close();
        }
    }
}
