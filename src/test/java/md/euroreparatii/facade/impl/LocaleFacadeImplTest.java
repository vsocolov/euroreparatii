package md.euroreparatii.facade.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.web.servlet.LocaleResolver;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.IsEqual.equalTo;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class LocaleFacadeImplTest
{
    @InjectMocks
    private LocaleFacadeImpl facade = new LocaleFacadeImpl();

    @Mock
    private LocaleResolver localeResolver;

    @Test
    public void testGetCurrentLocaleCode()
    {
        final HttpServletRequest request = new MockHttpServletRequest();
        final Locale locale = new Locale("en");

        when(localeResolver.resolveLocale(request)).thenReturn(locale);

        final String currentLocaleCode = facade.getCurrentLocaleCode(request);
        assertThat(currentLocaleCode, equalTo("en"));
    }
}
