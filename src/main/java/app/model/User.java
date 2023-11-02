package app.model;

import java.util.Date;

public class User {
    private int id;
    private String email;
    private String username;
    private String password;
    private String avatarUrl;
    private Date createdAt;
    private static int idIncrement = 1;


    public User(String email, String username, String password, String avatarUrl, Date createdAt) {
        this.id = idIncrement;
        this.email = email;
        this.username = username;
        this.password = password;
        this.avatarUrl = avatarUrl;
        this.createdAt = createdAt;
        idIncrement++;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public static int getIdIncrement() {
        return idIncrement;
    }

    public static void setIdIncrement(int idIncrement) {
        User.idIncrement = idIncrement;
    }
}
