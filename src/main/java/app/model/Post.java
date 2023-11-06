package app.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class Post {
    private int id;
    private int authorId;
    private String content;
    private String imageUrl;

    private List<Comment> comments;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    private int likes;

    public Post() {
    }

    public Post(int id, int authorId, String content, String imageUrl, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.authorId = authorId;
        this.content = content;
        this.imageUrl = imageUrl;
        this.comments = new ArrayList<>();
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.likes = 0;
    }

    public Post(int authorId, String content, String imageUrl, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.authorId = authorId;
        this.content = content;
        this.imageUrl = imageUrl;
        this.comments = new ArrayList<>();
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.likes = 0;
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

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }
}
