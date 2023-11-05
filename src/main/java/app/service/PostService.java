package app.service;

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
        String sql = "update  appfakebook.post set author_id = ?,content = ?, img_url = ?, created_at = ?, updated_at = ?"
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
        String sql = "select * from appfakebook.post where id = ? ;";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            int author_id = resultSet.getInt("author_id");
            String content = resultSet.getString("content");
            String img_url = resultSet.getString("img_url");
            LocalDateTime created_at = resultSet.getTimestamp("created_at").toLocalDateTime();
            LocalDateTime updated_at = resultSet.getTimestamp("updated_at").toLocalDateTime();
            return new Post(author_id, content, img_url, created_at, updated_at);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Post> findAll() {
        List<Post> posts = new ArrayList<>();
        String sql = "select * from appfakebook.post;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int author_id = resultSet.getInt("author_id");
                String content = resultSet.getString("content");
                String img_url = resultSet.getString("img_url");
                LocalDateTime created_at = resultSet.getTimestamp("created_at").toLocalDateTime();
                LocalDateTime updated_at = resultSet.getTimestamp("updated_at").toLocalDateTime();
                Post post = new Post(id, author_id, content, img_url, created_at, updated_at);
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
