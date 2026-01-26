package mypackage.model.page;

import java.util.Objects;

/**
 * Page model for the Register page that holds data the template needs.
 */
public class PMRegister {

  /**
   * Member username prefill.
   */
  private String m_strUsernamePrefill;

  /**
   * Member error message to display on the page.
   */
  private String m_strErrorMessage;

  /**
   * Member request context path.
   */
  private String m_strRequestContextPath;

  /**
   * Default constructor initializing defaults.
   */
  public PMRegister() {
    this.m_strUsernamePrefill = null;
    this.m_strErrorMessage = null;
    this.m_strRequestContextPath = null;
  }

  /**
   * Parameterized constructor.
   *
   * @param p_strUsernamePrefill username to prefill in the form
   */
  public PMRegister(String p_strUsernamePrefill) {
    this.m_strUsernamePrefill = p_strUsernamePrefill;
    this.m_strErrorMessage = null;
    this.m_strRequestContextPath = null;
  }

  /**
   * Returns the username prefill value.
   *
   * @return the username to prefill, or null if none
   */
  public String getUsernamePrefill() {
    return this.m_strUsernamePrefill;
  }

  /**
   * Sets the username prefill value.
   *
   * @param p_strUsernamePrefill the username to prefill
   */
  public void setUsernamePrefill(String p_strUsernamePrefill) {
    this.m_strUsernamePrefill = p_strUsernamePrefill;
  }

  /**
   * Returns the error message for the page.
   *
   * @return the error message, or null if none
   */
  public String getErrorMessage() {
    return this.m_strErrorMessage;
  }

  /**
   * Sets the error message for the page.
   *
   * @param p_strErrorMessage the error message to set
   */
  public void setErrorMessage(String p_strErrorMessage) {
    this.m_strErrorMessage = p_strErrorMessage;
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

  @Override
  public String toString() {
    return "PMRegister{" +
        "usernamePrefill=" + m_strUsernamePrefill +
        ", errorMessage=" + m_strErrorMessage +
        ", requestContextPath=" + m_strRequestContextPath +
        '}';
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    PMRegister pmRegister = (PMRegister) o;
    return Objects.equals(m_strUsernamePrefill, pmRegister.m_strUsernamePrefill) &&
        Objects.equals(m_strErrorMessage, pmRegister.m_strErrorMessage) &&
        Objects.equals(m_strRequestContextPath, pmRegister.m_strRequestContextPath);
  }

  @Override
  public int hashCode() {
    return Objects.hash(m_strUsernamePrefill, m_strErrorMessage, m_strRequestContextPath);
  }
}
