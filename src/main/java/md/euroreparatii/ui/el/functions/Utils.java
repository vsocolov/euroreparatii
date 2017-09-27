package md.euroreparatii.ui.el.functions;

import md.euroreparatii.config.AppConfig;
import md.euroreparatii.facade.LocaleFacade;
import md.euroreparatii.facade.impl.LocaleFacadeImpl;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.PageContext;

public class Utils {
    public static String currentLocaleCode(final PageContext pageContext) {
        return getLocaleFacade(pageContext).getCurrentLocaleCode((HttpServletRequest) pageContext.getRequest());
    }

    public static AppConfig appConfig(final PageContext pageContext) {
        return getAppConfig(pageContext);
    }

    private static WebApplicationContext getWebApplicationContext(final PageContext pageContext) {
        return WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
    }

    private static LocaleFacade getLocaleFacade(final PageContext pageContext) {
        return (LocaleFacade) getWebApplicationContext(pageContext).getBean(LocaleFacadeImpl.FACADE_NAME);
    }

    private static AppConfig getAppConfig(final PageContext pageContext) {
        return (AppConfig) getWebApplicationContext(pageContext).getBean(AppConfig.APP_CONFIG_NAME);
    }
}
