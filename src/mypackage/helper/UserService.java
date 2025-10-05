package mypackage.helper;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import mypackage.model.db.User;

@Stateless
public class UserService {
  @PersistenceContext(unitName = "MyPU")
  private EntityManager em;

  public User find(int id) {
    return em.find(User.class, id);
  }

  public User findByUsername(String username) {
    return em.createQuery("SELECT u FROM User u WHERE u.username = :username", User.class)
             .setParameter("username", username)
             .getResultStream()
             .findFirst()
             .orElse(null);
  }

  public void save(User user) {
    em.persist(user);
  }
}
