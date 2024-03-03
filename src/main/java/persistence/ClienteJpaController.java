package persistence;

import java.io.Serializable;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import modelo.Usuario;

public class ClienteJpaController implements Serializable {
    
    private EntityManagerFactory emf;
    private EntityManager em;

    public ClienteJpaController() {
        emf = Persistence.createEntityManagerFactory("Tienda_PU");
        em = emf.createEntityManager();
    }
   
    
  

    public void create(Usuario cliente) {
        try {
            em.getTransaction().begin();
            em.persist(cliente);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (em.getTransaction() != null) {
                em.getTransaction().rollback();
            }
            throw ex;
        } finally {
            em.close();
        }
    }

    public void edit(Usuario cliente) throws Exception {
        try {
            em.getTransaction().begin();
            cliente = em.merge(cliente);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (em.getTransaction() != null) {
                em.getTransaction().rollback();
            }
            throw ex;
        } finally {
            em.close();
        }
    }

    public void destroy(Long id) throws Exception {
        try {
            em.getTransaction().begin();
            Usuario cliente;
            try {
                cliente = em.getReference(Usuario.class, id);
                cliente.getId(); // Intenta acceder a algún campo para activar la carga perezosa (lazy loading) si es necesario
            } catch (EntityNotFoundException enfe) {
                throw new Exception("Cliente con id " + id + " no existe.", enfe);
            }
            em.remove(cliente);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public Usuario find(Long id) {
        try {
            return em.find(Usuario.class, id);
        } finally {
            em.close();
        }
    }
}
