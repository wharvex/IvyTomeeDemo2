package mypackage.helper;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

public class ServletHelper {
  public static void putPage(HttpServletResponse response,
                             Map<String, Object> root, String templateUrl)
      throws
      IOException {
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");

    Configuration cfg = ConfigHelper.getInstance().getCfg();
    Template temp = cfg.getTemplate(templateUrl);

    try (PrintWriter writer = response.getWriter()) {
      temp.process(root, writer);
    } catch (TemplateException e) {
      throw new RuntimeException(e);
    }
  }
}
