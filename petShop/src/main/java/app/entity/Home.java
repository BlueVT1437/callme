package app.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Home {
    @Id
    private String id;
    private String password;

    public Home(String id, String password) {
        this.id = id;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
