package mypackage.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mypackage.helper.ServletHelper;
import mypackage.model.page.PMError;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "ErrorServlet", urlPatterns = {"/error"})
public final class ErrorServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @Override
  public void doGet(HttpServletRequest p_request, HttpServletResponse p_response) throws IOException, ServletException {
    String strTitle = p_request.getParameter("title");
    String strMessage = p_request.getParameter("message");
    String strCode = p_request.getParameter("code");

    PMError pmError = new PMError();
    pmError.setTitle(strTitle);
    pmError.setMessage(strMessage);
    pmError.setRequestContextPath(p_request.getContextPath());

    if (strCode != null) {
      try {
        int intCode = Integer.parseInt(strCode);
        p_response.setStatus(intCode);
      } catch (NumberFormatException e) {
        // ignore invalid code
      }
    }

    Map<String, Object> rootMap = new HashMap<>();
    rootMap.put("pmError", pmError);

    ServletHelper.putPage(p_response, rootMap, "error.ftl");
  }

  @Override
  public void doPost(HttpServletRequest p_request, HttpServletResponse p_response) throws IOException, ServletException {
    // Delegate POST to GET behavior so callers can POST to show the error page as well
    doGet(p_request, p_response);
  }

}

