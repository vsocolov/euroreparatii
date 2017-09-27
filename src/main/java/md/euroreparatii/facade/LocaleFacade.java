package md.euroreparatii.facade;

import javax.servlet.http.HttpServletRequest;

public interface LocaleFacade
{
    String getCurrentLocaleCode(HttpServletRequest request);
}
