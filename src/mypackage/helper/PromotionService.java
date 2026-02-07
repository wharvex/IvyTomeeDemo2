package mypackage.helper;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import mypackage.model.db.Promotion;

@Stateless
public class PromotionService {
  @PersistenceContext(unitName = "MyPU")
  private EntityManager m_em;

  /**
   * Find a Promotion by its id.
   *
   * @param p_intId the id of the promotion to find
   * @return Promotion the found promotion or null if none
   */
  public Promotion find(int p_intId) {
    return m_em.find(Promotion.class, p_intId);
  }

  /**
   * Find a Promotion by its title.
   *
   * @param p_strTitle the title to search for
   * @return Promotion the first matching promotion or null if none
   */
  public Promotion findByTitle(String p_strTitle) {
    return m_em.createQuery("SELECT p FROM Promotion p WHERE p.m_strTitle = :title", Promotion.class)
        .setParameter("title", p_strTitle)
        .getResultStream()
        .findFirst()
        .orElse(null);
  }

  /**
   * Get all Promotion entities.
   * 
   * @param p_promPromotion
   */
  public java.util.List<Promotion> getAll() {
    return m_em.createQuery("SELECT p FROM Promotion p", Promotion.class).getResultList();
  }

  /**
   * Persist a Promotion entity.
   *
   * @param p_promPromotion the promotion to persist
   */
  public void save(Promotion p_promPromotion) {
    m_em.persist(p_promPromotion);
  }
}
