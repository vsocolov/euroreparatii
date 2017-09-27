package md.euroreparatii.dal.dao.impl;

import md.euroreparatii.dal.dao.AbstractHibernateDAO;
import md.euroreparatii.dal.dao.UserDao;
import md.euroreparatii.dal.model.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionException;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.rmi.UnexpectedException;

import static org.hibernate.criterion.Restrictions.and;
import static org.hibernate.criterion.Restrictions.eq;

@Repository
@Transactional
public class UserDaoImpl extends AbstractHibernateDAO<User> implements UserDao {

    public UserDaoImpl() {
        super(User.class);
    }

    public User getByUsernameAndPassword(final String username, final String password) throws UnexpectedException,
            SessionException {
        try {
            Session session = getCurrentSession();
            try {
                return (User) session.createCriteria(User.class)
                        .add(and(eq("username", username), eq("password", password)))
                        .uniqueResult();

            } catch (HibernateException e) {
                throw new UnexpectedException(String.format("Error when retrieve user by username: %s , and password: %s.",
                        username, password));
            }
        } catch (HibernateException e) {
            throw new SessionException(String.format("Error when retrieve user by username: %s , and password: %s." +
                    " Cannot retrieve hibernate session.", username, password));
        }
    }
}
