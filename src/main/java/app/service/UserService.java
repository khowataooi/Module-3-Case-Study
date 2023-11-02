package app.service;

import app.model.User;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class UserService implements IService<User> {
    Connection connection = ConnectionToMySQL.getConnection();

    @Override
    public boolean add(User user) {
        String sql = "insert into appfakebook.user (email, username, password, avatar_url, created_at) VALUES\n + (?, ?, ?, ?, ?);";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getAvatarUrl());
            preparedStatement.setDate(5, Date.valueOf(user.getCreatedAt()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean edit(User user, int id) {
        String sql = "update appfakebook.user set email = ?, username = ?, password = ?, avatar_url = ?, created_at = ? where id = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getAvatarUrl());
            preparedStatement.setDate(5, Date.valueOf(user.getCreatedAt()));
            preparedStatement.setInt(6, id);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "select * from appfakebook.user where id = ?;";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public User findById(int id) {
        String sql = "select * from appfakebook.user where id = ?;";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String email = resultSet.getString("email");
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String avatar_url = resultSet.getString("avatar_url");
                LocalDate created_at = resultSet.getDate("created_at").toLocalDate();
                User user = new User(id, email, username, password, avatar_url, created_at);
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }


    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        String sql = "select * from appfakebook.user;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String email = String.valueOf(resultSet.getInt("email"));
                String username = String.valueOf(resultSet.getInt("username"));
                String password = String.valueOf(resultSet.getInt("password"));
                String avatar_url = String.valueOf(resultSet.getInt("avatar_url"));
                LocalDate created_at = LocalDate.ofEpochDay(resultSet.getInt("created_at"));
                User user = new User(id, email, username, password, avatar_url, created_at);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

}