package md.euroreparatii.dal.dao.impl;

import com.github.springtestdbunit.annotation.DatabaseSetup;
import md.euroreparatii.dal.dao.AbstractDBUnitTest;
import md.euroreparatii.dal.dao.RoleDao;
import md.euroreparatii.dal.model.Role;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.rmi.UnexpectedException;

import static com.github.springtestdbunit.annotation.DatabaseOperation.REFRESH;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

@DatabaseSetup(value = "roles.xml", type = REFRESH)
public class RoleDaoImplTest extends AbstractDBUnitTest {

    @Autowired
    private RoleDao roleDao;

    @Test
    public void testGetById() throws UnexpectedException {
        final Role role = roleDao.getById(10);
        assertThat(role, is(not(nullValue())));
        assertThat(role.getName(), equalTo("test"));
    }

}
