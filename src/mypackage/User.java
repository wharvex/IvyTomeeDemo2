package mypackage;

import jakarta.persistence.*;

@Entity
@Table(name = "SITE_USER")
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "USER_ID")
  private int id;

  @Column(name = "USER_HANDLE")
  private String username;

  public User() {
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

}
