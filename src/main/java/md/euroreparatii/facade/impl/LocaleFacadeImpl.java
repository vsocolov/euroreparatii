package md.euroreparatii.facade.impl;

import md.euroreparatii.facade.LocaleFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.LocaleResolver;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Service(LocaleFacadeImpl.FACADE_NAME)
public class LocaleFacadeImpl implements LocaleFacade
{
    public static final String FACADE_NAME = "localeFacade";

    @Autowired
    private LocaleResolver localeResolver;

    @Override
    public String getCurrentLocaleCode(final HttpServletRequest request)
    {
        final Locale locale = localeResolver.resolveLocale(request);
        return locale.getLanguage();
    }
}
