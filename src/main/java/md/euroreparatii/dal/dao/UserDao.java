package md.euroreparatii.dal.dao;

import md.euroreparatii.dal.model.User;
import org.hibernate.SessionException;

import java.rmi.UnexpectedException;
import java.util.List;

public interface UserDao {

    User getById(Integer id);

    public List<User> getAll();

    void create(User entity);

    User update(User entity);

    void delete(User entity);

    User getByUsernameAndPassword(final String username, final String password) throws UnexpectedException,
            SessionException;
}
