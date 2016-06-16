package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Beneficiario;

public class BeneficiarioDAO {
    
    EntityManager em;
    
    public BeneficiarioDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Beneficiario obj) throws Exception {
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

    public List<Beneficiario> listar() throws Exception {
        return em.createNamedQuery("Beneficiario.findAll").getResultList();
    }
    
    public void alterar(Beneficiario obj) throws Exception {
        
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
    
    public void excluir(Beneficiario obj) throws Exception {
        
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
    
      public Beneficiario buscarPorChavePrimaria(Long idBeneficiario) {

        return em.find(Beneficiario.class, idBeneficiario);

    }


    public void fechaEmf() {
        Conexao.closeConexao();
    }
    

    
}
