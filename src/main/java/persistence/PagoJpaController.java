package persistence;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import modelo.Pago;



public class PagoJpaController {
    
    private final EntityManagerFactory emf;
    private final EntityManager em;

    public PagoJpaController() {
        emf = Persistence.createEntityManagerFactory("Tienda_PU");
        em = emf.createEntityManager();
    }

    public void create(Pago pago) {
        try {
            em.getTransaction().begin();
            em.persist(pago);
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

    public void edit(Pago pago) throws Exception {
        try {
            em.getTransaction().begin();
            pago = em.merge(pago);
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
            Pago pago;
            try {
                pago = em.getReference(Pago.class, id);
                pago.getId(); 
            } catch (EntityNotFoundException enfe) {
                throw new Exception("Pago con id " + id + " no existe.", enfe);
            }
            em.remove(pago);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public Pago find(Long id) {
        try {
            return em.find(Pago.class, id);
        } finally {
            em.close();
        }
    }
}
