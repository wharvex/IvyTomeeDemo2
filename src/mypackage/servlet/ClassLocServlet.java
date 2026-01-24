package mypackage.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.io.IOException;
import java.security.CodeSource;
import java.util.ServiceLoader;

@WebServlet("/classloc")
public class ClassLocServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    resp.setContentType("text/plain; charset=UTF-8");
    PrintWriter out = resp.getWriter();
    try {
      // API class location
      Class<?> api = jakarta.persistence.EntityManager.class;
      out.println("API class: " + api.getName());
      CodeSource cs = api.getProtectionDomain().getCodeSource();
      out.println("API code source: " + (cs == null ? "null" : cs.getLocation()));

      out.println();
      out.println("Persistence providers discovered via ServiceLoader:");
      ServiceLoader<jakarta.persistence.spi.PersistenceProvider> sl =
          ServiceLoader.load(jakarta.persistence.spi.PersistenceProvider.class);
      int i = 0;
      for (jakarta.persistence.spi.PersistenceProvider p : sl) {
        i++;
        out.println("Provider #" + i + ": " + p.getClass().getName());
        CodeSource pcs = p.getClass().getProtectionDomain().getCodeSource();
        out.println(" Provider code source: " + (pcs == null ? "null" : pcs.getLocation()));
      }
      if (i == 0) out.println(" (none found by ServiceLoader)");
    } catch (Throwable t) {
      out.println("Error: " + t);
      t.printStackTrace(out);
    }
  }
}