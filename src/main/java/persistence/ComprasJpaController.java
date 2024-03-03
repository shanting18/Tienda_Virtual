package persistence;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import modelo.Compras;

public class ComprasJpaController {
   
    
    private final EntityManagerFactory emf;
    private final EntityManager em;

    public ComprasJpaController() {
        emf = Persistence.createEntityManagerFactory("Tienda_PU");
        em = emf.createEntityManager();
    }

    public void create(Compras compras) {
        try {
            em.getTransaction().begin();
            em.persist(compras);
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

    public void edit(Compras compras) throws Exception {
        try {
            em.getTransaction().begin();
            compras = em.merge(compras);
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
            Compras compras;
            try {
                compras = em.getReference(Compras.class, id);
                compras.getId(); // Intenta acceder a algún campo para activar la carga perezosa (lazy loading) si es necesario
            } catch (EntityNotFoundException enfe) {
                throw new Exception("Compra con id " + id + " no existe.", enfe);
            }
            em.remove(compras);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public Compras find(Long id) {
        try {
            return em.find(Compras.class, id);
        } finally {
            em.close();
        }
    }
}
