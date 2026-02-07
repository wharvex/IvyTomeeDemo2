package mypackage.model.page;

import java.util.Objects;
import java.util.List;
import java.util.ArrayList;
import mypackage.model.db.Promotion;
import mypackage.model.db.User;

/**
 * Page model for the Hello page that holds a User object.
 */
public class PMHello {

  /**
   * Member User object.
   */
  private User m_usrUser;

  /**
   * Member request context path.
   */
  private String m_strRequestContextPath;

  /**
   * Member promotions list.
   */
  private List<Promotion> m_lstPromotions;

  /**
   * Default constructor initializing defaults.
   */
  public PMHello() {
    this.m_usrUser = null;
    this.m_strRequestContextPath = null;
    this.m_lstPromotions = new ArrayList<>();
  }

  /**
   * Parameterized constructor.
   *
   * @param p_usrUser the User object to associate with this page model
   */
  public PMHello(User p_usrUser) {
    this.m_usrUser = p_usrUser;
    this.m_strRequestContextPath = null;
    this.m_lstPromotions = new ArrayList<>();
  }

  /**
   * Returns the User object associated with this page model.
   *
   * @return the User object, or null if none set
   */
  public User getUser() {
    return this.m_usrUser;
  }

  /**
   * Sets the User object associated with this page model.
   *
   * @param p_usrUser the User object to set
   */
  public void setUser(User p_usrUser) {
    this.m_usrUser = p_usrUser;
  }

  /**
   * Returns the request context path associated with this page model.
   *
   * @return the request context path as a String, or null if none set
   */
  public String getRequestContextPath() {
    return this.m_strRequestContextPath;
  }

  /**
   * Sets the request context path for this page model.
   *
   * @param p_strRequestContextPath the request context path to set
   */
  public void setRequestContextPath(String p_strRequestContextPath) {
    this.m_strRequestContextPath = p_strRequestContextPath;
  }

  /**
   * Returns the list of promotions associated with this page model.
   *
   * @return List of Promotion objects (may be empty, never null)
   */
  public List<Promotion> getPromotions() {
    return this.m_lstPromotions;
  }

  /**
   * Sets the list of promotions for this page model.
   *
   * @param p_lstPromotions the list of Promotion objects to set
   */
  public void setPromotions(List<Promotion> p_lstPromotions) {
    this.m_lstPromotions = p_lstPromotions;
  }

  @Override
  public String toString() {
    return "PMHello{" +
        "user=" + m_usrUser +
        ", requestContextPath=" + m_strRequestContextPath +
        ", promotions=" + m_lstPromotions +
        '}';
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    PMHello pmHello = (PMHello) o;
    return Objects.equals(m_usrUser, pmHello.m_usrUser) &&
        Objects.equals(m_strRequestContextPath, pmHello.m_strRequestContextPath) &&
        Objects.equals(m_lstPromotions, pmHello.m_lstPromotions);
  }

  @Override
  public int hashCode() {
    return Objects.hash(m_usrUser, m_strRequestContextPath, m_lstPromotions);
  }
}
