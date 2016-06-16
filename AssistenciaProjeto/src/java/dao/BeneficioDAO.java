package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Beneficio;

public class BeneficioDAO {

    EntityManager em;

    public BeneficioDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Beneficio obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();

        }

    }

    public List<Beneficio> listar() throws Exception {
        return em.createNamedQuery("Beneficio.findAll").getResultList();
    }

    public void alterar(Beneficio obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    public void excluir(Beneficio obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
    
     public Beneficio buscarPorChavePrimaria(Long idBeneficio) {

        return em.find(Beneficio.class, idBeneficio);

    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

   

}
