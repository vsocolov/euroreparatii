package md.euroreparatii.dal.dao.impl;

import md.euroreparatii.dal.dao.AbstractHibernateDAO;
import md.euroreparatii.dal.dao.RoleDao;
import md.euroreparatii.dal.model.Role;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public class RoleDaoImpl extends AbstractHibernateDAO<Role> implements RoleDao {
    private static Logger log = Logger.getLogger(RoleDaoImpl.class);

    public RoleDaoImpl() {
        super(Role.class);
    }
}
