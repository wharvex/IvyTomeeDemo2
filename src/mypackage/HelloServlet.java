package mypackage;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.ejb.EJB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public final class HelloServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @EJB
  private UserService userService;

  /**
   * Respond to a GET request for the content produced by
   * this servlet.
   *
   * @param request  The servlet request we are processing
   * @param response The servlet response we are producing
   * @throws IOException      if an input/output error occurs
   * @throws ServletException if a servlet error occurs
   */
  @Override
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
      throws IOException, ServletException {
    var f = request.getSession();
    Map<String, Object> root = new HashMap<>();
    root.put("user", userService.find(1));

    ServletHelper.putPage(response, root, "home.ftlh");
  }

}
