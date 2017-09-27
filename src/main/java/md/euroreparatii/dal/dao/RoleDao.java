package md.euroreparatii.dal.dao;

import md.euroreparatii.dal.model.Role;

import java.util.List;

public interface RoleDao {

    Role getById(Integer id);

    public List<Role> getAll();

    void create(Role entity);

    Role update(Role entity);

    void delete(Role entity);
}
