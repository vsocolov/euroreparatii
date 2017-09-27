package md.euroreparatii.dal.model;

import javax.persistence.*;
import java.io.Serializable;

import static md.euroreparatii.dal.model.User.TABLE_NAME;
import static javax.persistence.FetchType.LAZY;
import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = TABLE_NAME)
public class User implements Serializable {

    public static final String TABLE_NAME = "users";
    public static final String DB_ID = "id";
    public static final String DB_USERNAME = "username";
    public static final String DB_PASSWORD = "password";
    public static final String DB_ROLE_ID = "role_id";
    public static final String DB_ENABLED = "enabled";

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = DB_ID, nullable = false)
    private Integer id;

    @Column(name = DB_USERNAME, nullable = false, unique = true)
    private String username;

    @Column(name = DB_PASSWORD, nullable = false)
    private String password;

    @Column(name = DB_ROLE_ID, nullable = false)
    private Integer roleId;

    @Column(name = DB_ENABLED, nullable = false)
    private boolean enabled;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(insertable = false, updatable = false, name = DB_ROLE_ID)
    private Role role;

    public User() {
        super();
    }

    public User(String password, int roleId, String username, boolean enabled) {
        this.password = password;
        this.roleId = roleId;
        this.username = username;
        this.enabled = enabled;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("User [id=");
        builder.append(id);
        builder.append(", username=");
        builder.append(username);
        builder.append(", password=");
        builder.append(password);
        builder.append(", roleId=");
        builder.append(roleId);
        builder.append(", enabled=");
        builder.append(enabled);
        builder.append(", role=");
        builder.append(role);
        builder.append("]");
        return builder.toString();
    }

}
