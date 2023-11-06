package app.service;

import app.model.Comment;
import app.model.Post;
import app.model.User;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class PostService implements IService<Post> {
    Connection connection = ConnectionToMySQL.getConnection();

    @Override
    public boolean add(Post post) {
        String sql = "insert into appfakebook.post (author_id, content, img_url, created_at, updated_at) VALUES\n" +
                "(?, ?, ?, ?, ?);";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, post.getAuthorId());
            preparedStatement.setString(2, post.getContent());
            preparedStatement.setString(3, post.getImageUrl());
            preparedStatement.setTimestamp(4, Timestamp.valueOf(post.getCreatedAt()));
            preparedStatement.setTimestamp(5, Timestamp.valueOf(post.getUpdatedAt()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean edit(Post post, int id) {
        String sql = "update appfakebook.post set author_id = ?,content = ?, img_url = ?, created_at = ?, updated_at = ?"
                + "where id = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, post.getAuthorId());
            preparedStatement.setString(2, post.getContent());
            preparedStatement.setString(3, post.getImageUrl());
            preparedStatement.setTimestamp(4, Timestamp.valueOf(post.getCreatedAt()));
            preparedStatement.setTimestamp(5, Timestamp.valueOf(post.getUpdatedAt()));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from appfakebook.post where id = ?;";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Post findById(int id) {
        String sql = "select p.*, c.* from appfakebook.post as p inner join appfakebook.comment as c on p.id = c.post_id where p.id = ? ;";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            return parsePost(resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Post> findAll() {
        List<Post> posts = new ArrayList<>();
        String sql = "select p.*, c.* from appfakebook.post as p inner join appfakebook.comment as c on p.id = c.post_id;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Post post = parsePost(resultSet);
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }

    private Post parsePost(ResultSet resultSet) throws SQLException {
        Post post = new Post();
        List<Comment> comments = new ArrayList<>();
        while (resultSet.next()) {
            // Thong tin Post
            int postId = resultSet.getInt("p.id");
            int authorId = resultSet.getInt("p.author_id");
            String content = resultSet.getString("p.content");
            String imgUrl = resultSet.getString("img_url");
//            LocalDateTime createdAt = resultSet.getTimestamp("p.created_at").toLocalDateTime();
            LocalDateTime updatedAt = resultSet.getTimestamp("p.updated_at").toLocalDateTime();
            post.setId(postId);
            post.setAuthorId(authorId);
            post.setContent(content);
            post.setImageUrl(imgUrl);
            post.setCreatedAt(null);
            post.setUpdatedAt(updatedAt);

            // Thong tin danh sach Comment trong Post do
            int commentId = resultSet.getInt("c.id");
            int commentPostId = resultSet.getInt("post_id");
            int commentAuthorId = resultSet.getInt("c.author_id");
            String commentContent = resultSet.getString("c.content");
//            LocalDateTime commentCreatedAt = resultSet.getTimestamp("c.created_at").toLocalDateTime();
            LocalDateTime commentUpdatedAt = resultSet.getTimestamp("c.updated_at").toLocalDateTime();
            Comment comment = new Comment(commentId, commentAuthorId, commentPostId, commentContent, null, commentUpdatedAt);
            comments.add(comment);
        }
        post.setComments(comments);
        return post;
    }
}
