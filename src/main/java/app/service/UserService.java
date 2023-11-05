package app.service;

import app.model.User;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class UserService implements IService<User> {
    Connection connection = ConnectionToMySQL.getConnection();

    @Override
    public boolean add(User user) {
        String sql = "insert into appfakebook.user (email, username, password, avatar_url,gender,date_of_birth, created_at) VALUES\n + (?," +
                " ?, ?, ?, ?, ?, ?);";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getAvatarUrl());
            preparedStatement.setString(5,user.getGender());
            preparedStatement.setDate(6, Date.valueOf(user.getDateOfBirth()));
            preparedStatement.setTimestamp(7, Timestamp.valueOf(user.getCreatedAt()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean edit(User user, int id) {
        String sql = "update appfakebook.user set email = ?, username = ?, password = ?, avatar_url = ?,gender = ?, date_of_birth = ?, created_at =" +
                " ? where id = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getAvatarUrl());
            preparedStatement.setString(5,user.getGender());
            preparedStatement.setDate(6, Date.valueOf(user.getDateOfBirth()));
            preparedStatement.setTimestamp(7, Timestamp.valueOf(user.getCreatedAt()));
            preparedStatement.setInt(8, id);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "delete from appfakebook.user where id = ?;";
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
            String email = resultSet.getString("email");
            String username = resultSet.getString("username");
            String password = resultSet.getString("password");
            String avatar_url = resultSet.getString("avatar_url");
            String gender = resultSet.getString("gender");
            LocalDate date_of_birth = resultSet.getDate("date_of_birth").toLocalDate();
            LocalDateTime created_at = resultSet.getTimestamp("created_at").toLocalDateTime();
            return new User(id, email, username, password, avatar_url, gender, date_of_birth, created_at);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
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
                String email = String.valueOf(resultSet.getString("email"));
                String username = String.valueOf(resultSet.getString("username"));
                String password = String.valueOf(resultSet.getString("password"));
                String avatar_url = String.valueOf(resultSet.getString("avatar_url"));
                String gender = String.valueOf(resultSet.getString("gender"));
                LocalDate date_of_birth = resultSet.getDate("day_of_birth").toLocalDate();
                LocalDateTime created_at = resultSet.getTimestamp("created_at").toLocalDateTime();
                User user = new User(id, email, username, password, avatar_url, gender,date_of_birth, created_at);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    public boolean checkUser(String username, String password) {
        List<User> users = findAll();
        for (User user : users) {
            if (username.equals(user.getUsername()) && password.equals(user.getPassword()) ) {
                return true;
            }
        }
        return false;
    }
}