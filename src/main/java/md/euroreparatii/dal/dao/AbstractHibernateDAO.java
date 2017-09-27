package md.euroreparatii.dal.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

@Repository
@Transactional
public abstract class AbstractHibernateDAO<T extends Serializable> {

    private final Class<T> clazz;

    @Autowired
    private SessionFactory sessionFactory;

    public AbstractHibernateDAO(final Class<T> clazzToSet) {
        clazz = clazzToSet;
    }

    @SuppressWarnings("unchecked")
    public T getById(final Integer id) {
        return (T) getCurrentSession().get(clazz, id);
    }

    @SuppressWarnings("unchecked")
    public List<T> getAll() {
        return getCurrentSession().createQuery("FROM " + clazz.getName()).list();
    }

    public void create(final T entity) {
        getCurrentSession().save(entity);
    }

    public T update(final T entity) {
        getCurrentSession().merge(entity);
        return entity;
    }

    public void delete(final T entity) {
        getCurrentSession().delete(entity);
    }

    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    public Class<T> getClazz() {
        return clazz;
    }
}
