package mypackage.model.page;

import java.util.Objects;

/**
 * Page model for the Error page that holds data the template needs.
 */
public class PMError {

  /**
   * Member title of the error page.
   */
  private String m_strTitle;

  /**
   * Member message describing the error.
   */
  private String m_strMessage;

  /**
   * Member request context path.
   */
  private String m_strRequestContextPath;

  /**
   * Default constructor initializing defaults.
   */
  public PMError() {
    this.m_strTitle = null;
    this.m_strMessage = null;
    this.m_strRequestContextPath = null;
  }

  /**
   * Parameterized constructor.
   *
   * @param p_strTitle title to display on the error page
   */
  public PMError(String p_strTitle) {
    this.m_strTitle = p_strTitle;
    this.m_strMessage = null;
    this.m_strRequestContextPath = null;
  }

  /**
   * Returns the title for the error page.
   *
   * @return the title, or null if none
   */
  public String getTitle() {
    return this.m_strTitle;
  }

  /**
   * Sets the title for the error page.
   *
   * @param p_strTitle the title to set
   */
  public void setTitle(String p_strTitle) {
    this.m_strTitle = p_strTitle;
  }

  /**
   * Returns the error message for the page.
   *
   * @return the message, or null if none
   */
  public String getMessage() {
    return this.m_strMessage;
  }

  /**
   * Sets the error message for the page.
   *
   * @param p_strMessage the message to set
   */
  public void setMessage(String p_strMessage) {
    this.m_strMessage = p_strMessage;
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
    return "PMError{" +
        "title=" + m_strTitle +
        ", message=" + m_strMessage +
        ", requestContextPath=" + m_strRequestContextPath +
        '}';
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    PMError pmError = (PMError) o;
    return Objects.equals(m_strTitle, pmError.m_strTitle) &&
        Objects.equals(m_strMessage, pmError.m_strMessage) &&
        Objects.equals(m_strRequestContextPath, pmError.m_strRequestContextPath);
  }

  @Override
  public int hashCode() {
    return Objects.hash(m_strTitle, m_strMessage, m_strRequestContextPath);
  }
}
