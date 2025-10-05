package mypackage.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.ejb.EJB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mypackage.helper.ServletHelper;
import mypackage.helper.UserService;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public final class HelloServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @EJB
  private UserService userService;

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    String loggedInUserName = (String) request.getSession().getAttribute("loggedInUserName");
    Map<String, Object> root = new HashMap<>();
    root.put("user", userService.findByUsername(loggedInUserName));

    ServletHelper.putPage(response, root, "home.ftlh");
  }

}
