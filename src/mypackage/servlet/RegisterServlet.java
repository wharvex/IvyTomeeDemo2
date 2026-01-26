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
import mypackage.model.page.PMRegister;

import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public final class RegisterServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @EJB
  private UserService userService;

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    PMRegister pmRegister = new PMRegister();
    pmRegister.setRequestContextPath(request.getContextPath());
    HashMap<String, Object> root = new HashMap<>();
    root.put("pmRegister", pmRegister);
    ServletHelper.putPage(response, root, "register.ftlh");
  }

  @Override
  public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
    String username = req.getParameter("username");
    String password = req.getParameter("password");

    // If user already exists, re-display form with error
    User existing = userService.findByUsername(username);
    if (existing != null) {
      PMRegister pmRegister = new PMRegister();
      pmRegister.setUsernamePrefill(username);
      pmRegister.setErrorMessage("Username already exists");
      pmRegister.setRequestContextPath(req.getContextPath());
      HashMap<String, Object> root = new HashMap<>();
      root.put("pmRegister", pmRegister);
      ServletHelper.putPage(resp, root, "register.ftlh");
      return;
    }

    String hash = PasswordHelper.hashPassword(password);

    User user = new User();
    user.setUsername(username);
    user.setPasswordHash(hash);

    userService.save(user);
    resp.sendRedirect("login");
  }

}
