package mypackage.model.db;

import jakarta.persistence.*;

@Entity
@Table(name = "SITE_USER")
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "site_user_seq_gen")
  @SequenceGenerator(
      name = "site_user_seq_gen",        // name used in @GeneratedValue
      sequenceName = "site_user_seq",    // name of the DB sequence (case-insensitive in Oracle)
      allocationSize = 1                 // should match the sequence increment size
  )
  @Column(name = "USER_ID")
  private Integer id;

  @Column(name = "USER_HANDLE")
  private String username;

  @Column(name = "PASSWORD_HASH")
  private String passwordHash;

  public User() {
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPasswordHash() {
    return passwordHash;
  }

  public void setPasswordHash(String passwordHash) {
    this.passwordHash = passwordHash;
  }

}
