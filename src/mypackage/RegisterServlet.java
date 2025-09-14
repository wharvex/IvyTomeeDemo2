package mypackage;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public final class RegisterServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @EJB
  private UserService userService;

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    ServletHelper.putPage(response, new HashMap<>(), "login.ftlh");
  }

  @Override
  public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
    String username = req.getParameter("username");
    String password = req.getParameter("password");
    // Hash password (e.g., BCrypt)
    String hash = "";

    User user = new User();
    user.setUsername(username);
    user.setPasswordHash(hash);

    userService.save(user);
    resp.sendRedirect("login.jsp");
  }

}
