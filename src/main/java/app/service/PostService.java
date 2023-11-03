package app.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PostService {
    private Connection connection = ConnectToMySql.getConnection();

}
