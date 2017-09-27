package md.euroreparatii.dal.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import static md.euroreparatii.dal.model.Role.TABLE_NAME;
import static javax.persistence.FetchType.LAZY;
import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = TABLE_NAME)
public class Role implements Serializable {

    public static final String TABLE_NAME = "roles";
    public static final String DB_ID = "id";
    public static final String DB_NAME = "name";

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = DB_ID, nullable = false)
    private Integer id;

    @Column(name = DB_NAME, nullable = false, unique = true)
    private String name;

    @OneToMany(fetch = LAZY, mappedBy = "role")
    private Collection<User> users;

    public Role() {
        super();
    }

    public Role(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Collection<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Role [id=");
        builder.append(id);
        builder.append(", name=");
        builder.append(name);
        builder.append(", users=");
        builder.append(users);
        builder.append("]");
        return builder.toString();
    }
}
