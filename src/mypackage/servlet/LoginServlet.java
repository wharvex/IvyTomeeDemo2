package mypackage.servlet;

import jakarta.ejb.EJB;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mypackage.helper.PasswordHelper;
import mypackage.helper.ServletHelper;
import mypackage.helper.UserService;
import mypackage.model.db.User;
import mypackage.model.page.PMLogin;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public final class LoginServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @EJB
  private UserService userService;

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    PMLogin pmLogin = new PMLogin();
    pmLogin.setRequestContextPath(request.getContextPath());
    HashMap<String, Object> root = new HashMap<>();
    root.put("pmLogin", pmLogin);
    ServletHelper.putPage(response, root, "login.ftlh");
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
      PMLogin pmLogin = new PMLogin();
      pmLogin.setUsernamePrefill(username);
      pmLogin.setErrorMessage("Invalid username or password");
      pmLogin.setRequestContextPath(request.getContextPath());
      HashMap<String, Object> root = new HashMap<>();
      root.put("pmLogin", pmLogin);
      ServletHelper.putPage(response, root, "login.ftlh");
    }
  }

}
