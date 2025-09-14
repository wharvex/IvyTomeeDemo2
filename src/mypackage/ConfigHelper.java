package mypackage;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;

import java.io.File;
import java.io.IOException;
import java.util.TimeZone;

public class ConfigHelper {
  private final Configuration cfg;

  private static ConfigHelper instance = null;

  private ConfigHelper() {
    cfg = new Configuration(Configuration.VERSION_2_3_31);
    setDirectoryForTemplateLoading(cfg);

    // Set the preferred charset template files are stored in. UTF-8 is a good choice in most applications.
    cfg.setDefaultEncoding("UTF-8");

    // Sets how errors will appear. During web page *development* TemplateExceptionHandler.HTML_DEBUG_HANDLER is better.
    cfg.setTemplateExceptionHandler(TemplateExceptionHandler.HTML_DEBUG_HANDLER);

    // Don't log exceptions inside FreeMarker that it will throw at you anyway.
    cfg.setLogTemplateExceptions(false);

    // Wrap unchecked exceptions thrown during template processing into TemplateException-s.
    cfg.setWrapUncheckedExceptions(true);

    // Do not fall back to higher scopes when reading a null loop variable.
    cfg.setFallbackOnNullLoopVariable(false);

    // To accommodate to how JDBC returns values.
    cfg.setSQLDateAndTimeTimeZone(TimeZone.getDefault());
  }

  public static ConfigHelper getInstance() {
    if (instance == null) {
      instance = new ConfigHelper();
    }
    return instance;
  }

  private void setDirectoryForTemplateLoading(Configuration cfg) {
    try {
      cfg.setDirectoryForTemplateLoading(new File("../../../web/WEB-INF/templates"));
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  public Configuration getCfg() {
    return cfg;
  }
}
