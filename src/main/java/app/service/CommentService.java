package app.service;

import app.model.Comment;
import app.model.User;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class CommentService implements IService<Comment> {
    Connection connection = ConnectionToMySQL.getConnection();

    @Override
    public boolean add(Comment comment) {
        String sql = "INSERT INTO appfakebook.comment(author_id, post_id, content, created_at)\n" +
                "VALUES (?, ?, ?, ?);";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, comment.getAuthorId());
            preparedStatement.setInt(2, comment.getPostId());
            preparedStatement.setString(3, comment.getContent());
            preparedStatement.setTimestamp(4, Timestamp.valueOf(comment.getCreatedAt()));
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean edit(Comment comment, int id) {
        String spl = "update appfakebook.comment set content = ? where id= ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(spl);
            preparedStatement.setString(1, comment.getContent());
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();

        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String spl = "delete from appfakebook.comment where id = ?;";
        try {
            PreparedStatement statement = connection.prepareStatement(spl);
            statement.setInt(1, id);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Comment findById(int id) {
        String sql = "select * from appfakebook.comment where id = ?;";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();
            int authorId = resultSet.getInt("authorId");
            int postId = resultSet.getInt("postId");
            String content = resultSet.getString("content");
            LocalDateTime createAt = LocalDateTime.from(resultSet.getTimestamp("createAt").toLocalDateTime());
            LocalDateTime updateAt = LocalDateTime.from(resultSet.getTimestamp("updateAt").toLocalDateTime());
            return new Comment(id,authorId,postId,content,createAt,updateAt);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }


    }

    @Override
    public List<Comment> findAll() {
        List<Comment> comment = new ArrayList<>();
        String sql = "select * from appfakebook.comment;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                int id = resultSet.getInt("id");
                int authorId = resultSet.getInt("authorId");
                int postId = resultSet.getInt("postId");
                String content = resultSet.getString("content");
                LocalDateTime createAt = LocalDateTime.from(resultSet.getTimestamp("createAt").toLocalDateTime());
                LocalDateTime updateAt = LocalDateTime.from(resultSet.getTimestamp("updateAt").toLocalDateTime());
                Comment comment1 = new Comment(id,authorId,postId,content,createAt,updateAt);
                comment.add(comment1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return comment;
    }
}
