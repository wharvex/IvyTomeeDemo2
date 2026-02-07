package mypackage.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.ejb.EJB;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mypackage.helper.PromotionService;
import mypackage.helper.ServletHelper;
import mypackage.helper.UserService;
import mypackage.model.db.Promotion;
import mypackage.model.db.User;
import mypackage.model.page.PMHello;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public final class HelloServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @EJB
  private UserService userService;

  @EJB
  private PromotionService promotionService;

  /**
   * Handle GET: put the logged-in User object into the template root as "pmUser".
   *
   * @param p_request the HttpServletRequest
   * @param p_response the HttpServletResponse
   * @throws IOException if an I/O error occurs
   * @throws ServletException if a servlet error occurs
   */
  @Override
  public void doGet(HttpServletRequest p_request, HttpServletResponse p_response) throws IOException, ServletException {
    // Get the logged-in User object.
    String strLoggedInUserName = (String) p_request.getSession().getAttribute("loggedInUserName");
    User loggedInUser = userService.findByUsername(strLoggedInUserName);

    // Get all promotions.
    List<Promotion> promotions = promotionService.getAll();

    // Create the page model and populate it with the necessary data.
    PMHello pmHello = new PMHello();
    pmHello.setUser(loggedInUser);
    pmHello.setRequestContextPath(p_request.getContextPath());
    pmHello.setPromotions(promotions);

    // Put the page model into the template root map.
    Map<String, Object> rootMap = new HashMap<>();
    rootMap.put("pmHello", pmHello);

    // Display the page with the root map data.
    ServletHelper.putPage(p_response, rootMap, "hello.ftl");
  }

}

