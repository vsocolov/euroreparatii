package md.euroreparatii.service;

import md.euroreparatii.dal.dao.UserDao;
import md.euroreparatii.dal.model.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.rmi.UnexpectedException;
import java.util.ArrayList;
import java.util.List;

@Service(value = "customAuthenticationProvider")
@Transactional
public class CustomAuthenticationProvider implements AuthenticationProvider {
    private static final Logger log = Logger.getLogger(CustomAuthenticationProvider.class);

    @Autowired
    private UserDao userDao;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = authentication.getName();
        String password = authentication.getCredentials().toString();

        try {
            final User user = userDao.getByUsernameAndPassword(username, password);
            if (user != null) {
                List<GrantedAuthority> grantedAuths = new ArrayList<GrantedAuthority>() {{
                    add(new SimpleGrantedAuthority("ROLE_" + user.getRole().getName()));
                }};
                return new UsernamePasswordAuthenticationToken(username, password, grantedAuths);
            }
        } catch (UnexpectedException e) {
            log.error(e.getMessage(), e);
        }
        throw new AuthenticationCredentialsNotFoundException("Bad credentials.");
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
