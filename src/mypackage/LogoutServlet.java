package mypackage;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "LogoutServlet", urlPatterns = {"/logout"})
public final class LogoutServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @EJB
  private UserService userService;

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    request.getSession().removeAttribute("loggedInUserName");
    response.sendRedirect("hello");
  }

}
