package mypackage;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public final class LoginServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @EJB
  private UserService userService;

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    ServletHelper.putPage(response, new HashMap<>(), "login.ftlh");
  }

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    User user = userService.findByUsername(username);
    if (user != null && PasswordHelper.verifyPassword(password, user.getPasswordHash())) {
      request.getSession().setAttribute("loggedInUserName", username);
      response.sendRedirect("hello");
    } else {
      HashMap<String, Object> root = new HashMap<>();
      root.put("errorMessage", "Invalid username or password");
      ServletHelper.putPage(response, root, "login.ftlh");
    }
  }

}
