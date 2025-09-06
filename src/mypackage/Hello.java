/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.apache.commons.lang.WordUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Simple servlet to validate that the Hello, World example can
 * execute servlets.  In the web application deployment descriptor,
 * this servlet must be mapped to correspond to the link in the
 * "index.html" file.
 *
 * @author Craig R. McClanahan <Craig.McClanahan@eng.sun.com>
 */

public final class Hello extends HttpServlet {

  private static final long serialVersionUID = 1L;

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
    String message = WordUtils.capitalizeFully("hello");
    String message2 = System.getProperty("user.dir");
    Configuration cfg = ConfigHelper.getInstance().getCfg();
    Template temp = cfg.getTemplate("home.ftlh");
    Map<String, Object> root = new HashMap<>();
    root.put("user", new User("John Doe", "blah@gmail.com"));
    try (PrintWriter writer = response.getWriter()) {
      temp.process(root, writer);
    } catch (TemplateException e) {
      throw new RuntimeException(e);
    }
  }


}
