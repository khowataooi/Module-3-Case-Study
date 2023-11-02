package app.model;

import java.util.Date;

public class Comment {
    private int id;
    private int authorId;
    private int postId;
    private String context;
    private Date createdAt;
    private Date updatedAt;
    private static int idIncrement;

    public Comment(int authorId, int postId, String context, Date createdAt, Date updatedAt) {
        this.id = idIncrement;
        this.authorId = authorId;
        this.postId = postId;
        this.context = context;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        idIncrement++;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public static int getIdIncrement() {
        return idIncrement;
    }

    public static void setIdIncrement(int idIncrement) {
        Comment.idIncrement = idIncrement;
    }
}
