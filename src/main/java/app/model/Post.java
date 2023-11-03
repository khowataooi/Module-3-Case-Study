package app.model;

import javax.xml.soap.Text;
import java.time.LocalDate;
import java.util.Date;

public class Post {
    private int id;
    private int authorId;
    private String content;
    private String imageUrl;
    private LocalDate createdAt;
    private LocalDate updatedAt;

    public Post(int id, int authorId, String content, String imageUrl, LocalDate createdAt, LocalDate updatedAt) {
        this.id = id;
        this.authorId = authorId;
        this.content = content;
        this.imageUrl = imageUrl;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public LocalDate getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDate createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDate getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDate updatedAt) {
        this.updatedAt = updatedAt;
    }


}
