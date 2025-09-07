package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import jakarta.ejb.EJB;
import org.apache.commons.lang.WordUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public final class Hello extends HttpServlet {

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
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");

    Configuration cfg = ConfigHelper.getInstance().getCfg();
    Template temp = cfg.getTemplate("home.ftlh");

    Map<String, Object> root = new HashMap<>();
    root.put("user", userService.find(1));

    try (PrintWriter writer = response.getWriter()) {
      temp.process(root, writer);
    } catch (TemplateException e) {
      throw new RuntimeException(e);
    }
  }


}
