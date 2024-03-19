package persistence;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import modelo.productos.Detalles;

public class DetallesJpaController {
    
    private final EntityManagerFactory emf;
    private final EntityManager em;

    public DetallesJpaController() {
        emf = Persistence.createEntityManagerFactory("Tienda_PU");
        em = emf.createEntityManager();
    }

    public void create(Detalles detalles) {
        try {
            em.getTransaction().begin();
            em.persist(detalles);
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

    public void edit(Detalles detalles) throws Exception {
        try {
            em.getTransaction().begin();
            detalles = em.merge(detalles);
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
            Detalles detalles;
            try {
                detalles = em.getReference(Detalles.class, id);
                detalles.getId(); // Intenta acceder a algún campo para activar la carga perezosa (lazy loading) si es necesario
            } catch (EntityNotFoundException enfe) {
                throw new Exception("Detalles con id " + id + " no existe.", enfe);
            }
            em.remove(detalles);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public Detalles find(Long id) {
        try {
            return em.find(Detalles.class, id);
        } finally {
            em.close();
        }
    }
}
