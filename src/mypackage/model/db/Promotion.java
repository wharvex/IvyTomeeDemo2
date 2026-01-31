package mypackage.model.db;

import jakarta.persistence.*;

/**
 * JPA entity that represents the PROMOTION table.
 */
@Entity
@Table(name = "PROMOTION")
public class Promotion {
  @Id
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "promotion_seq_gen")
  @SequenceGenerator(name = "promotion_seq_gen", sequenceName = "promotion_seq", allocationSize = 1)
  @Column(name = "PROMOTION_ID")
  private Integer m_intId;

  @Column(name = "TITLE")
  private String m_strTitle;

  public Promotion() {
  }

  /**
   * Returns the database id of the promotion.
   *
   * @return Integer the promotion id
   */
  public Integer getId() {
    return m_intId;
  }

  /**
   * Sets the database id of the promotion.
   *
   * @param p_intId the id to set
   */
  public void setId(Integer p_intId) {
    m_intId = p_intId;
  }

  /**
   * Returns the promotion title.
   *
   * @return String the title
   */
  public String getTitle() {
    return m_strTitle;
  }

  /**
   * Sets the promotion title.
   *
   * @param p_strTitle the title to set
   */
  public void setTitle(String p_strTitle) {
    m_strTitle = p_strTitle;
  }
}
