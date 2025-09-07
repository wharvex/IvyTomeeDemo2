package mypackage;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
public class UserService {
  @PersistenceContext(unitName = "MyPU")
  private EntityManager em;

  public User find(int id) {
    return em.find(User.class, id);
  }

  public void save(User user) {
    em.persist(user);
  }
}
